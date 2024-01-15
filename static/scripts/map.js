class WorldMap {
    constructor(opts) {
      this.element = document.querySelector(opts.element);
      this.data = opts.data;
      this.world = opts.basemap;

      this.backgroundColor = "#EAF2FA";
      this.landColor = "#09A573";
      this.landStroke = "#FCF5E9";
      this.markerColor = "#E26F99";

      this.draw();
    }

    draw() {
      const mapHolder = d3.select(this.element);
      const boundingRect = mapHolder.node().parentNode.getBoundingClientRect();
      this.chartWidth = 2560 //boundingRect.width;
      this.chartHeight = 1434 //boundingRect.height;

      this.mymap = mapHolder.append('svg')
        .attr("title", "Map")
        .attr("viewBox", [0, 0, this.chartWidth, this.chartHeight]);

      this.createProjection();
      this.createMap();
      this.updateMarkers();
    }

    createProjection() {
      this.projection = d3.geoMercator()
        .scale([900])
        .center([0, 0])
        .translate([this.chartWidth, this.chartHeight]);

      this.path = d3.geoPath().projection(this.projection);
    }

    createMap() {
       this.mymap.append("rect")
        .attr("width", this.chartWidth)
        .attr("height", this.chartHeight)
        .attr('fill', this.backgroundColor);

      this.mymap.append('g').selectAll('path')
        .data(this.world.features)
        .join('path')
        .attr('d', this.path)
        .attr('fill', this.landColor)
        .attr('stroke', this.landStroke)
        .attr('stroke-width', 1)
      //
      // const zoom = d3.zoom()
      //   .scaleExtent([1, 8])
      //   .translateExtent([[0, 0], [this.chartWidth, this.chartHeight]])
      //   .on('zoom', function () {
      //     self.mymap.attr('transform', d3.zoomTransform(this));
      //   });
      //
      // this.mymap.call(zoom)
    }

    zoomToCountry(country) {
      const bounds = this.path.bounds(country);
      const dx = bounds[1][0] - bounds[0][0];
      const dy = bounds[1][1] - bounds[0][1];
      const x = (bounds[0][0] + bounds[1][0]) / 2;
      const y = (bounds[0][1] + bounds[1][1]) / 2;
      const scale = 0.9 / Math.max(dx / this.chartWidth, dy / this.chartHeight);
      const translate = [this.chartWidth / 2 - scale * x, this.chartHeight / 2 - scale * y];

      this.mymap.transition()
        .duration(750)
        .call(
          d3.zoom().transform,
          d3.zoomIdentity.translate(translate[0], translate[1]).scale(scale)
        );
    }

    updateMarkers() {
      const flags = this.mymap.select('g').selectAll("image")
        .data(this.data);

      flags.exit().remove();

      flags.enter()
        .append("image")
        .merge(flags)
        .attr("transform", d => {
          return `translate(${this.projection([d[2]['lon'],d[2]['lat']])})`;
        })
        .attr('xlink:href', function (d) {
            if (d[3] && d[3]['address_type'] == "bornaddress") {
              return "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.0/flags/4x3/"+d[3]['country'].toLowerCase()+".svg"
            }
            if (d[4] && d[4]['address_type'] == "bornaddress") {
             return "https://cdn.jsdelivr.net/gh/lipis/flag-icons@7.0.0/flags/4x3/"+d[4]['country'].toLowerCase()+".svg"
            }
            return "#"
          })
        .attr("width", 18)
        .attr("height", 13)
    }


    setData(newData) {
      this.data = newData;
      this.updateMarkers();
    }
  }
