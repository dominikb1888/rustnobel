--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: __diesel_schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.__diesel_schema_migrations (
    version character varying(50) NOT NULL,
    run_on timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.__diesel_schema_migrations OWNER TO postgres;

--
-- Name: address; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.address (
    id bigint NOT NULL,
    address_type text,
    street text,
    zip text,
    city text,
    country text,
    person_id bigint,
    lat double precision,
    lon double precision
);


ALTER TABLE public.address OWNER TO postgres;

--
-- Name: nobelwinner; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.nobelwinner (
    id bigint NOT NULL,
    firstname text,
    surname text,
    born date,
    died date,
    gender text,
    year bigint,
    category text,
    overallmotivation text,
    motivation text,
    org_id bigint
);


ALTER TABLE public.nobelwinner OWNER TO postgres;

--
-- Name: organization; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.organization (
    id bigint NOT NULL,
    name text,
    category text,
    address_id bigint
);


ALTER TABLE public.organization OWNER TO postgres;

--
-- Data for Name: __diesel_schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.__diesel_schema_migrations (version, run_on) FROM stdin;
\.


--
-- Data for Name: address; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.address (id, address_type, street, zip, city, country, person_id, lat, lon) FROM stdin;
203	diedaddress	\N	\N	\N	NL	141	\N	\N
717	bornaddress	\N	\N	's Graveland	NL	720	\N	\N
908	bornaddress	\N	\N	Ta'izz	YE	963	13.5752242	44.0215268
912	bornaddress	\N	\N	Constantine	DZ	969	36.3641642	6.6084281
919	bornaddress	\N	\N	Kvikne	NO	980	61.5745535	9.5855817
916	diedaddress	\N	\N	Moffett Field CA	US	977	37.3994101	-122.0750953
922	diedaddress	\N	\N	Ketchum ID	US	982	43.680741	-114.363662
917	bornaddress	\N	\N	Wailacama	TL	978	\N	\N
902	bornaddress	\N	\N	Morrison IL	US	953	41.8094058	-89.9649496
905	bornaddress	\N	\N	Suita	JP	958	34.764884	135.51735
927	bornaddress	\N	\N	Des Moines IA	US	988	41.5910323	-93.6046655
925	bornaddress	\N	\N	Bnin (now Kórnik)	PL	985	52.2233861	17.0961903
915	bornaddress	\N	\N	Catanzaro	IT	976	38.9076353	16.5960465
920	bornaddress	\N	\N	Olshammar	SE	981	58.7555403	14.7995023
910	bornaddress	\N	\N	Ikata	JP	966	33.4896014	132.3560996
903	diedaddress	\N	\N	Santa Fe NM	US	954	35.6876096	-105.938456
923	bornaddress	\N	\N	Reykjavik	IS	983	64.145981	-21.9422367
926	bornaddress	\N	\N	Raleigh NC	US	987	35.7803977	-78.6390989
907	bornaddress	\N	\N	Kubyshev (now Samara)	RU	961	\N	\N
928	organization	\N	\N	Minneapolis MN	US	\N	44.9772995	-93.2654692
913	bornaddress	\N	\N	Rostock	DE	972	54.0886707	12.1400211
906	organization	\N	\N	Edmonton	CA	\N	53.5462055	-113.491241
924	bornaddress	\N	\N	Iria Flavia	ES	984	42.7487367	-8.6495728
911	bornaddress	\N	\N	Kronshtadt	RU	967	60.01485565	29.69888219
914	bornaddress	\N	\N	Bochum	DE	974	51.4818111	7.2196635
918	diedaddress	\N	\N	Châtenay	FR	979	45.3211	5.22884
921	diedaddress	\N	\N	Övralid	SE	981	55.5274389	13.0102698
909	bornaddress	\N	\N	Kibbutz Sde-Nahum	IL	964	31.319908	34.615333
904	bornaddress	\N	\N	Bearsden	GB	955	55.920461	-4.3332046
888	bornaddress	\N	\N	Champaign-Urbana IL	US	937	40.104535	-88.272157
889	bornaddress	\N	\N	Dippenhall	GB	938	51.2120604	-0.8359555
394	bornaddress	\N	\N	Lorain OH	US	336	41.4673238	-82.1781904
89	organization	\N	\N	Manchester	GB	\N	53.4794892	-2.2451148
743	diedaddress	\N	\N	Sens	FR	760	48.1978559	3.282606
340	bornaddress	\N	\N	Cairo	EG	275	30.0443879	31.2357257
287	organization	\N	\N	Memphis TN	US	\N	35.1460249	-90.0517638
579	bornaddress	\N	\N	Norrköping	SE	541	58.5909124	16.1903511
626	bornaddress	\N	\N	Ried im Innkreis	AT	600	48.2085868	13.48839
237	organization	\N	\N	Utrecht	NL	\N	52.0907006	5.1215634
857	diedaddress	\N	\N	Bellême	FR	891	48.3753612	0.5629418
446	bornaddress	\N	\N	Fulda	DE	389	50.5542328	9.6770448
352	organization	\N	\N	Milan	IT	\N	45.4641943	9.1896346
163	bornaddress	\N	\N	Banbury	GB	114	52.0601807	-1.3402795
652	diedaddress	\N	\N	Grantchester	GB	645	52.179362	0.0932745
58	diedaddress	\N	\N	Mexico City	MX	36	19.4326296	-99.1331785
212	diedaddress	\N	\N	Berkeley CA	US	148	37.8708393	-122.272863
18	bornaddress	\N	\N	Marietta OH	US	10	39.4167742	-81.4548392
379	bornaddress	\N	\N	Hoechst	DE	319	50.2046172	9.2349882
703	bornaddress	\N	\N	Pforzheim	DE	701	48.8908846	8.7029532
41	organization	\N	\N	Providence RI	US	\N	41.8239891	-71.4128343
783	organization	\N	\N	Salt Lake City UT	US	\N	40.7596198	-111.886797
139	bornaddress	\N	\N	Würzburg	DE	98	49.79245	9.932966
107	bornaddress	\N	\N	Pittsburgh PA	US	68	40.4416941	-79.9900861
897	organization	\N	\N	Greenbelt MD	US	\N	39.004607	-76.8756838
694	bornaddress	\N	\N	Cheetham Hill	GB	689	53.5032866	-2.2344764
685	bornaddress	\N	\N	Gainesville FL	US	680	29.6519684	-82.3249846
607	bornaddress	\N	\N	Wingham	CA	573	43.886245	-81.31275
407	bornaddress	\N	\N	Turin	IT	347	45.0677551	7.6824892
387	bornaddress	\N	\N	Derby	GB	325	52.9212617	-1.4761491
451	organization	\N	\N	Schenectady NY	US	\N	42.8142432	-73.9395687
695	bornaddress	\N	\N	Dewsbury	GB	690	53.6909103	-1.6302142
521	bornaddress	\N	\N	Moguer	ES	471	37.2746182	-6.8373527
504	diedaddress	\N	\N	El Cerrito CA	US	451	37.9154056	-122.301411
705	bornaddress	\N	\N	Oranienburg	DE	705	52.7529379	13.2457591
217	bornaddress	\N	\N	Aigle	CH	152	46.3179006	6.9688929
816	bornaddress	\N	\N	Tardebigg	GB	844	\N	\N
768	diedaddress	\N	\N	Bangalore	IN	796	12.9767936	77.590082
484	diedaddress	\N	\N	Lambaréné	GA	433	-0.6942603	10.2236482
879	bornaddress	\N	\N	Hsinchu	TW	924	24.8066333	120.9686833
813	bornaddress	\N	\N	Springfield MA	US	841	42.1018764	-72.5886727
551	diedaddress	\N	\N	Schopfheim	DE	506	47.6500525	7.8216997
84	organization	\N	\N	Chapel Hill NC	US	\N	35.9131542	-79.05578
43	bornaddress	\N	\N	Neuenkirchen	DE	26	52.4170589	7.8395319
78	bornaddress	\N	\N	Grenå	DK	48	56.4134419	10.8793137
273	organization	\N	\N	Mountain View CA	US	\N	37.3893889	-122.0832101
778	bornaddress	\N	\N	Shingu Ehime	JP	808	33.948159	133.636449
642	bornaddress	\N	\N	Augsburg	DE	626	48.3668041	10.8986971
639	bornaddress	\N	\N	Kermanshah	IR	623	34.3239414	47.0735891
9	diedaddress	\N	\N	Leningrad	RU	5	59.938732	30.316229
536	organization	\N	\N	Breisgau	DE	\N	47.9960901	7.8494005
471	bornaddress	\N	\N	Hoquiam WA	US	418	46.980929	-123.889335
761	bornaddress	\N	\N	Mingora	PK	789	34.7725022	72.3606728
357	bornaddress	\N	\N	Echternach	LU	297	49.8120961	6.4214859
164	organization	\N	\N	Maine ME	US	\N	46.8200431	-67.9230792
617	bornaddress	\N	\N	Warwick	GB	589	52.2814519	-1.5815742
149	organization	\N	\N	Argonne IL	US	\N	38.623826	-90.1189726
331	bornaddress	\N	\N	Bulawayo	ZW	268	-20.1560599	28.5887063
859	bornaddress	\N	\N	Veshenskaya	RU	893	49.628994	41.725105
749	bornaddress	\N	\N	Silkeborg	DK	771	56.169453	9.5495141
376	bornaddress	\N	\N	Bellshill	GB	316	55.8189311	-4.0225794
792	diedaddress	\N	\N	Charlottenburg	DE	821	52.515747	13.3096834
347	bornaddress	\N	\N	Mount Vernon NY	US	285	40.9125085	-73.8386504
817	diedaddress	\N	\N	Farnborough	GB	844	51.5367279	-1.3748299
240	diedaddress	\N	\N	Woods Hole MA	US	172	41.5238207	-70.669259
75	bornaddress	\N	\N	Strehlen (now Strzelin)	PL	47	\N	\N
437	bornaddress	\N	\N	Montreal	CA	378	45.5031824	-73.5698065
143	bornaddress	\N	\N	the Hague	NL	100	52.0799838	4.3113461
1	organization	\N	\N	Tsukuba	JP	\N	36.0833265	140.077279
739	bornaddress	\N	\N	Dili	TL	756	-8.5536809	125.5784093
200	diedaddress	\N	\N	Palm Desert CA	US	139	33.7288179	-116.382571
313	bornaddress	\N	\N	Bahia Blanca	AR	246	-38.7176522	-62.2654871
40	diedaddress	\N	\N	Berlin	DE	24	52.5170365	13.3888599
555	bornaddress	\N	\N	Bremerhaven-Lehe	DE	510	53.5667574	8.6006
398	organization	\N	\N	St. Louis MO	US	\N	38.6280278	-90.1910154
606	bornaddress	\N	\N	Council ID	US	571	44.728532	-116.4364818
166	bornaddress	\N	\N	Newton-le-Willows	GB	117	53.4530667	-2.6263483
741	bornaddress	\N	\N	Karlbo	SE	759	59.5060154	16.3275259
600	diedaddress	\N	\N	Mülheim	DE	562	50.4492865	6.6829919
153	diedaddress	\N	\N	Tours	FR	107	47.3900474	0.6889268
171	bornaddress	\N	\N	Ann Arbor MI	US	119	42.2681569	-83.7312291
619	diedaddress	\N	\N	Focsani	RO	591	45.697274	27.1856921
566	bornaddress	\N	\N	Fosnavåg	NO	524	62.3421061	5.6342433
733	bornaddress	\N	\N	Dabrovica	PL	744	\N	\N
439	bornaddress	\N	\N	St. Columb Minor	GB	379	50.4212397	-5.0428584
174	bornaddress	\N	\N	Belfast	GB	121	54.596391	-5.9301829
411	organization	\N	\N	Greifswald	DE	\N	54.095791	13.3815238
348	diedaddress	\N	\N	Palo Alto CA	US	285	37.4443293	-122.1598465
106	organization	\N	\N	Rochester MN	US	\N	44.0234387	-92.4630182
597	bornaddress	\N	\N	Yukon FL	US	560	30.2346844	-81.6981513
135	organization	\N	\N	Hertfordshire	GB	\N	51.95686495	-0.2230509078
665	bornaddress	\N	\N	Hollerich	LU	658	49.5983299	6.1228061
326	diedaddress	\N	\N	Lewes East Sussex	GB	262	50.8746139	0.005115324111
48	diedaddress	\N	\N	Freiburg im Breisgau	DE	28	47.9960901	7.8494005
489	diedaddress	\N	\N	Bornheim-Merten	DE	437	50.7754718	6.9230645
69	bornaddress	\N	\N	Carcassonne	FR	42	43.2130358	2.3491069
431	bornaddress	\N	\N	Londonderry	GB	372	54.9978678	-7.3213056
449	organization	\N	\N	Grenoble	FR	\N	45.1875602	5.7357819
385	diedaddress	\N	\N	Kingston upon Thames	GB	324	51.4096275	-0.3062621
681	bornaddress	\N	\N	Norwich	GB	676	52.6285576	1.2923954
182	bornaddress	\N	\N	Milwaukee WI	US	129	43.0349931	-87.922497
851	bornaddress	\N	\N	Clinton NY	US	885	43.0484029	-75.3785034
209	organization	\N	\N	Liverpool	GB	\N	53.4071991	-2.99168
691	bornaddress	\N	\N	Caracas	VE	686	10.5060934	-66.9146008
861	diedaddress	\N	\N	Benzonia MI	US	895	44.621389	-86.099258
847	bornaddress	\N	\N	Maastricht	NL	877	50.8512438	5.6909768
62	diedaddress	\N	\N	Blacksburg VA	US	38	37.2296566	-80.4136767
801	bornaddress	\N	\N	La Flèche	FR	829	47.6968408	-0.0746149
603	diedaddress	\N	\N	Wickenberg AZ	US	565	33.9610673	-112.7139697
429	bornaddress	\N	\N	Corvallis OR	US	366	44.5645659	-123.2620435
12	diedaddress	\N	\N	Cambridge	GB	6	52.2055314	0.1186637
310	bornaddress	\N	\N	Gaffken (now Parusnoye)	RU	243	\N	\N
297	bornaddress	\N	\N	Detroit MI	US	230	42.3315509	-83.0466403
79	organization	\N	\N	Leiden	NL	\N	52.1594747	4.4908843
877	diedaddress	\N	\N	Ängelholm	SE	919	57.9331049	16.6165067
514	bornaddress	\N	\N	Landskrona	SE	462	55.8698007	12.8296734
524	diedaddress	\N	\N	Santiago	CL	473	-33.4377756	-70.6504502
312	bornaddress	\N	\N	Breslau (now Wroclaw)	PL	244	\N	\N
228	bornaddress	\N	\N	Buczacz (now Buchach)	UA	165	\N	\N
155	bornaddress	\N	\N	Frankfurt-on-the-Main	DE	108	50.041821	8.584764
61	bornaddress	\N	\N	Murfreesboro TN	US	38	35.8460396	-86.3921096
96	diedaddress	\N	\N	Wilmette IL	US	60	42.0757315	-87.7193768
415	organization	\N	\N	Holmdel NJ	US	\N	40.4137058	-74.14503975
351	diedaddress	\N	\N	Great Missenden	GB	288	51.7046508	-0.7086592
699	bornaddress	\N	\N	Istanbul	TR	696	41.0091982	28.9662187
770	bornaddress	\N	\N	Stoughton WI	US	800	42.9167389	-89.2178997
306	organization	\N	\N	Aarhus	DK	\N	56.1496278	10.2134046
655	diedaddress	\N	\N	Cresskill NJ	US	647	40.9414874	-73.9593041
523	bornaddress	\N	\N	Parral	CL	473	-36.1414293	-71.8222221
282	bornaddress	\N	\N	Jämshög	SE	216	56.2412875	14.5319796
7	organization	\N	\N	St. Petersburg	RU	\N	59.938732	30.316229
767	bornaddress	\N	\N	Tiruchirappalli	IN	796	10.804973	78.6870296
176	bornaddress	\N	\N	Woodstock	GB	124	51.8942879	-4.8765902
133	bornaddress	\N	\N	Changchun	CN	89	47.7303574	125.6617719
384	bornaddress	\N	\N	Newark	GB	324	53.0736266	-0.8005422346
708	organization	\N	\N	Marburg	DE	\N	50.8090106	8.7704695
380	bornaddress	\N	\N	Cologne	DE	320	50.938361	6.959974
795	diedaddress	\N	\N	Troitse-Lykovo	RU	823	55.786643	37.404236
589	organization	\N	\N	Nashville TN	US	\N	36.1622767	-86.7742984
235	organization	\N	\N	Gothenburg	SE	\N	57.7072326	11.9670171
292	bornaddress	\N	\N	Logan UT	US	225	41.7313063	-111.834914
147	diedaddress	\N	\N	La Jolla CA	US	103	32.8401623	-117.2740777
244	diedaddress	\N	\N	Burlington MA	US	174	44.4761601	-73.212906
97	organization	\N	\N	Kingston	CA	\N	44.230687	-76.481323
793	bornaddress	\N	\N	Liestal	CH	822	47.4839723	7.7347783
679	bornaddress	\N	\N	Farsø	DK	673	56.7722256	9.3399599
280	bornaddress	\N	\N	Kobiele Wielkie	PL	215	51.0304056	19.6243691
541	bornaddress	\N	\N	Pfaffendorf	DE	494	50.0186699	11.1824318
425	bornaddress	\N	\N	Delaware OH	US	363	40.299424	-83.073697
256	bornaddress	\N	\N	Glasgow	GB	187	55.861155	-4.2501687
83	diedaddress	\N	\N	Seattle WA	US	50	47.6038321	-122.330062
638	bornaddress	\N	\N	Bad Cannstatt	DE	622	48.8048828	9.2146797
690	bornaddress	\N	\N	Medicine Hat Alberta	CA	685	50.04303	-110.679016
187	bornaddress	\N	\N	Lethbridge Alberta	CA	132	49.6945782	-112.8331033
580	diedaddress	\N	\N	Djursholm	SE	541	59.3973535	18.0880625
759	bornaddress	\N	\N	Augusta GA	US	785	33.4709714	-81.9748429
650	bornaddress	\N	\N	South Norwalk CT	US	643	41.0937079	-73.4187303
199	bornaddress	\N	\N	Chester VT	US	139	43.2629706	-72.5945649
613	bornaddress	\N	\N	Colchester	GB	578	51.8896903	0.8994651
152	bornaddress	\N	\N	Menin	BE	107	50.7937353	3.167040611
284	bornaddress	\N	\N	Timmins ON	CA	219	48.477473	-81.330414
400	bornaddress	\N	\N	Platteville WI	US	340	42.7342942	-90.4784451
393	diedaddress	\N	\N	Croydon	GB	332	51.3713049	-0.101957
433	diedaddress	\N	\N	Vevey	CH	373	46.4602978	6.8418655
320	diedaddress	\N	\N	Milton Keynes	GB	257	52.0406502	-0.7594092
193	bornaddress	\N	\N	Vukovar	HR	136	45.3444094	19.002376
525	bornaddress	\N	\N	Leoncin	PL	474	52.3936382	20.534073
355	diedaddress	\N	\N	Castillon-du-Gard	FR	292	43.9706254	4.554361
485	bornaddress	\N	\N	Popowo	PL	434	53.6205886	22.4001881
480	bornaddress	\N	\N	Landsberg	DE	430	51.5253758	12.1624395
44	organization	\N	\N	Nancy	FR	\N	48.6937223	6.1834097
594	diedaddress	\N	\N	Del Mar CA	US	558	32.9594891	-117.2653146
266	bornaddress	\N	\N	Ainay-le-Château	FR	199	46.7115	2.69393
464	diedaddress	\N	\N	Gros-Islet	LC	409	14.0801333	-60.9524988
849	bornaddress	\N	\N	Neuchâtel	CH	881	46.9895828	6.9292641
20	bornaddress	\N	\N	Fürth	DE	11	49.4772475	10.9893626
172	bornaddress	\N	\N	Jönköping	SE	120	57.7825634	14.165719
734	bornaddress	\N	\N	Goldschmieden near Breslau	PL	746	\N	\N
513	bornaddress	\N	\N	Dungarvan	IE	461	52.0897488	-7.6210306
662	organization	\N	\N	Cold Spring Harbor NY	US	\N	40.8714873	-73.456788
659	organization	\N	\N	Palaiseau	FR	\N	48.7144587	2.2453842
564	bornaddress	\N	\N	Honolulu HI	US	522	21.2891309	-157.7173915
596	bornaddress	\N	\N	Kalgoorlie	AU	559	-30.7464139	121.473223
688	bornaddress	\N	\N	Wahoo NE	US	684	41.2111084	-96.6197985
853	diedaddress	\N	\N	Edzell	GB	886	56.8099863	-2.6558539
728	bornaddress	\N	\N	Olten	CH	736	47.3496571	7.903787
409	organization	\N	\N	Kashiwa	JP	\N	35.8676218	139.9756876
17	diedaddress	\N	\N	Contra	CH	8	46.1883815	8.8397143
727	bornaddress	\N	\N	Kharkov (now Kharkiv)	UA	734	\N	\N
678	diedaddress	\N	\N	Roquebrune-Cap-Martin	FR	672	43.7641047	7.4565697
517	diedaddress	\N	\N	Lakeville CT	US	464	41.954966	-73.446313
820	bornaddress	\N	\N	Whiting IN	US	846	41.6797578	-87.4944873
773	bornaddress	\N	\N	Avanca	PT	802	40.8062105	-8.5729444
757	bornaddress	\N	\N	Skattungbyn	SE	781	61.1857383	14.8481986
227	diedaddress	\N	\N	Hempstead NY	US	164	40.7092836	-73.6230362
895	diedaddress	\N	\N	Chesterfield MO	US	943	38.661953	-90.5643258
701	diedaddress	\N	\N	Wayland MA	US	699	42.3632063	-71.3606721
344	diedaddress	\N	\N	Messelhausen	DE	281	49.5754531	9.788308
32	organization	\N	\N	Boston MA	US	\N	42.3554334	-71.060511
875	bornaddress	\N	\N	Halmstad	SE	918	56.6739826	12.8574827
558	bornaddress	\N	\N	Trelleck	GB	516	51.7450901	-2.7244457
322	bornaddress	\N	\N	Ridgeville IN	US	259	40.2892107	-85.028857
647	bornaddress	\N	\N	Atlanta GA	US	632	33.7489924	-84.3902644
878	diedaddress	\N	\N	Wakulla Springs State Park FL	US	920	40.12135415	-88.92418096
684	bornaddress	\N	\N	Lillebonne	FR	679	49.5188282	0.534411
634	bornaddress	\N	\N	Calw	DE	613	48.7112108	8.7452043
110	organization	\N	\N	Ithaca NY	US	\N	42.4396039	-76.4968019
179	bornaddress	\N	\N	Gary IN	US	127	41.6020962	-87.3370647
503	bornaddress	\N	\N	Redondo Beach CA	US	451	33.8455911	-118.3886766
856	bornaddress	\N	\N	Neuilly-sur-Seine	FR	891	48.884683	2.2695658
114	organization	\N	\N	Heidelberg	DE	\N	49.4093582	8.694724
304	diedaddress	\N	\N	Salem NJ	US	237	39.5717796	-75.4671423
42	organization	\N	\N	Rüschlikon	CH	\N	47.307465	8.5546421
623	organization	\N	\N	Durham NC	US	\N	35.996653	-78.9018053
267	bornaddress	\N	\N	Yonkers NY	US	201	40.9312099	-73.8987469
479	diedaddress	\N	\N	Bandol	FR	427	43.1357717	5.7523647
263	organization	\N	\N	Munster	DE	\N	52.9877613	10.0859882
311	organization	\N	\N	Edinburgh	GB	\N	55.9533456	-3.1883749
24	bornaddress	\N	\N	Tananarive (now Antananarivo)	MG	14	\N	\N
744	bornaddress	\N	\N	Smyrna (now Izmir)	TR	761	38.4629545	27.17729008
570	bornaddress	\N	\N	Denver CO	US	528	39.7392364	-104.984862
894	bornaddress	\N	\N	Taunton MA	US	943	41.9019257	-71.0931485
883	diedaddress	\N	\N	Randolph NH	US	929	44.375156	-71.2815661
349	bornaddress	\N	\N	Rotterdam	NL	286	51.9244424	4.47775
47	bornaddress	\N	\N	Budapest	HU	28	47.4978918	19.0401609
812	bornaddress	\N	\N	Hobart Tasmania	AU	839	-42.8825088	147.3281233
785	bornaddress	\N	\N	Superior WI	US	814	46.7207737	-92.1040796
8	bornaddress	\N	\N	Ryazan	RU	5	54.6295687	39.7425039
824	bornaddress	\N	\N	Hofei Anhwei	CN	850	\N	\N
872	diedaddress	\N	\N	Presqu'île-de-Giens	FR	912	43.0393732	6.1020135
565	organization	\N	\N	Trondheim	NO	\N	63.4304475	10.3952118
257	organization	\N	\N	West Lafayette IN	US	\N	40.4258686	-86.9080655
831	diedaddress	\N	\N	Poughkeepsie NY	US	856	41.7065539	-73.9283672
381	bornaddress	\N	\N	Walkerton IN	US	321	41.4667113	-86.4830681
698	bornaddress	\N	\N	Swansea	GB	695	51.6195955	-3.9459248
396	organization	\N	\N	Tunis	TN	\N	36.8002068	10.1857757
746	bornaddress	\N	\N	Springs	ZA	762	-26.243056	28.431667
473	bornaddress	\N	\N	Stuttgart	DE	420	48.7784485	9.1800132
682	diedaddress	\N	\N	Rumson NJ	US	677	40.372054	-73.9990269
871	bornaddress	\N	\N	Pointe-à-Pitre	GP	912	\N	\N
2	bornaddress	\N	\N	Nagoya	JP	1	35.1851045	136.8998438
774	bornaddress	\N	\N	Bloomsburg PA	US	804	41.0044958	-76.4537302
131	bornaddress	\N	\N	Bluefield WV	US	88	37.2698395	-81.2223195
562	bornaddress	\N	\N	Leningrad (now St. Petersburg)	RU	519	\N	\N
869	bornaddress	\N	\N	Nuoro Sardinia	IT	910	40.3210601	9.3297339
414	bornaddress	\N	\N	Baku	AZ	353	40.3755885	49.8328009
307	bornaddress	\N	\N	Lemvig	DK	239	56.5486971	8.3046456
724	bornaddress	\N	\N	Missoula MT	US	730	46.8701049	-113.995267
586	bornaddress	\N	\N	Skedsmo	NO	553	59.7830858	11.4626292
511	bornaddress	\N	\N	Glencorse	GB	460	55.8544964	-3.2076147
454	organization	\N	\N	Nottingham	GB	\N	52.9534193	-1.1496461
423	bornaddress	\N	\N	San José CA	US	362	37.3361663	-121.890591
716	diedaddress	\N	\N	Belgrade	RS	717	44.8178131	20.4568974
483	bornaddress	\N	\N	Kaysersberg	FR	433	48.1571873	7.241094009
622	bornaddress	\N	\N	Mukawa	JP	594	42.5748177	141.9268704
463	bornaddress	\N	\N	Sevilla	ES	408	37.3886303	-5.9953403
818	organization	\N	\N	Tübingen	DE	\N	48.5236164	9.0535531
614	bornaddress	\N	\N	Agen	FR	579	44.2015827	0.6176112
386	organization	\N	\N	Beverly MA	US	\N	42.5584284	-70.8800491
202	bornaddress	\N	\N	Arnhem	NL	141	51.984257	5.9108573
259	bornaddress	\N	\N	Zusamaltheim	DE	191	48.5299593	10.6370205
383	diedaddress	\N	\N	Newport Beach CA	US	323	33.6170092	-117.9294401
371	bornaddress	\N	\N	Pottsville PA	US	310	40.6851324	-76.1953701
249	diedaddress	\N	\N	Leuven	BE	180	50.879202	4.7011675
95	bornaddress	\N	\N	Enterprise OR	US	60	45.4258114	-117.278012
545	diedaddress	\N	\N	Tallahassee FL	US	499	30.4380832	-84.2809332
512	diedaddress	\N	\N	Carlops	GB	460	55.790192	-3.339839
100	organization	\N	\N	Kiel	DE	\N	54.3227085	10.135555
549	diedaddress	\N	\N	Baden-Baden	DE	503	48.7610716	8.239959
186	organization	\N	\N	Hamilton Ontario	CA	\N	43.2560802	-79.8728583
37	diedaddress	\N	\N	Stockholm	SE	23	59.3251172	18.0710935
522	diedaddress	\N	\N	San Juan	PR	471	18.46633	-66.10572
19	diedaddress	\N	\N	Evanston IL	US	10	42.0447388	-87.6930459
321	diedaddress	\N	\N	Orsay	FR	258	48.699184	2.187457
369	bornaddress	\N	\N	Castries	LC	309	14.0095966	-60.9902359
550	organization	\N	\N	Mainz	DE	\N	50.0012314	8.2762513
346	bornaddress	\N	\N	Amsterdam	NL	283	52.3730796	4.8924534
28	bornaddress	\N	\N	Uddingston	GB	16	55.8189569	-4.0824857
447	bornaddress	\N	\N	Wigton	GB	390	54.8246802	-3.1610942
238	bornaddress	\N	\N	Nijkerk	NL	171	52.21485365	5.478146324
105	organization	\N	\N	Buenos Aires	AR	\N	-34.6075682	-58.4370894
404	organization	\N	\N	College Park MD	US	\N	38.980666	-76.9369189
289	organization	\N	\N	Long Island New York NY	US	\N	40.753453	-73.9364
125	bornaddress	\N	\N	Stavanger	NO	84	58.9699675	5.7318101
434	bornaddress	\N	\N	Sauk Centre MN	US	374	45.737465	-94.9525216
787	bornaddress	\N	\N	South Bend IN	US	816	41.6833813	-86.2500066
781	bornaddress	\N	\N	Glens Falls NY	US	810	43.309941	-73.644447
213	bornaddress	\N	\N	Toyohashi	JP	149	34.769123	137.391461
769	bornaddress	\N	\N	Fowey	GB	798	50.3357786	-4.6365952
335	bornaddress	\N	\N	Fredericia	DK	272	55.565268	9.7562169
356	bornaddress	\N	\N	Chidambaram Tamil Nadu	IN	296	11.3994826	79.6909383
80	bornaddress	\N	\N	Semarang	ID	49	-6.9903988	110.4229104
800	diedaddress	\N	\N	Nethen	BE	827	50.7838206	4.675492
242	diedaddress	\N	\N	San Diego CA	US	173	32.7174202	-117.1627728
145	organization	\N	\N	Washington D.C.	US	\N	38.8950368	-77.0365427
704	bornaddress	\N	\N	Tonbridge	GB	704	51.1889529	0.2735876
134	diedaddress	\N	\N	Shenyang	CN	89	41.8026095	123.4279105
486	bornaddress	\N	\N	Roholte	DK	435	55.1950318	12.0900786
653	bornaddress	\N	\N	Sterling IL	US	646	41.788253	-89.6953656
221	bornaddress	\N	\N	St. Paul MN	US	156	44.9497487	-93.0931028
119	diedaddress	\N	\N	Randallstown MD	US	78	39.36909865	-76.79584213
898	bornaddress	\N	\N	Roanoke VA	US	946	37.270973	-79.9414313
574	bornaddress	\N	\N	Niagara Falls	CA	533	43.1065603	-79.0639039
707	bornaddress	\N	\N	Provo UT	US	708	40.2337289	-111.6587085
216	organization	\N	\N	Lausanne	CH	\N	46.5218269	6.6327025
726	bornaddress	\N	\N	Pleasanton CA	US	733	37.6624312	-121.8746789
120	bornaddress	\N	\N	Neudorf	CA	80	50.7136022	-103.0120907
742	bornaddress	\N	\N	Mondovi	DZ	760	36.6851201	7.7470888
35	organization	\N	\N	Uppsala	SE	\N	59.8586126	17.6387436
643	diedaddress	\N	\N	Falmouth MA	US	627	41.5514979	-70.6147519
543	organization	\N	\N	Harwell Berkshire	GB	\N	51.601871	-1.290588
151	organization	\N	\N	Rueil-Malmaison	FR	\N	48.87778	2.1802832
16	bornaddress	\N	\N	Melbourne	AU	8	-37.8142454	144.9631732
6	bornaddress	\N	\N	Arad	RO	3	46.1753793	21.3196342
766	bornaddress	\N	\N	Widnes	GB	795	53.3646888	-2.7283328
645	bornaddress	\N	\N	Næstved	DK	629	55.2328252	11.7674102
294	diedaddress	\N	\N	Truro NS	CA	227	45.366668	-63.300006
25	diedaddress	\N	\N	Paris	FR	14	48.8534951	2.3483915
126	diedaddress	\N	\N	Oslo	NO	84	59.9133301	10.7389701
372	organization	\N	\N	Columbia	US	\N	34.0007493	-81.0343313
364	diedaddress	\N	\N	Lucerne	CH	303	47.0505452	8.3054682
651	bornaddress	\N	\N	Hampstead	GB	645	51.55653	-0.1783011
450	diedaddress	\N	\N	Brive-Corrèze	FR	392	45.156197	1.500454
738	organization	\N	\N	Bronx NY	US	\N	40.8466508	-73.8785937
501	bornaddress	\N	\N	Ishpeming MI	US	450	46.488547	-87.667636
585	bornaddress	\N	\N	Privolnoye	RU	552	45.920673	41.304665
775	diedaddress	\N	\N	Fallston MD	US	804	39.53484305	-76.42210642
516	bornaddress	\N	\N	Orange NJ	US	464	40.7706562	-74.2326463
177	bornaddress	\N	\N	Danzig (now Gdansk)	PL	126	\N	\N
552	bornaddress	\N	\N	Schroda	PL	507	52.2284266	17.277827
435	bornaddress	\N	\N	Bordeaux	FR	375	44.841225	-0.5800364
755	bornaddress	\N	\N	Hillsboro WV	US	778	38.1354376	-80.2131296
880	diedaddress	\N	\N	Rockleigh NJ	US	925	41.0003754	-73.9304141
472	bornaddress	\N	\N	York PA	US	419	39.9624662	-76.727729
810	diedaddress	\N	\N	Drexel Hill PA	US	837	39.9470567	-75.2921301
563	bornaddress	\N	\N	Mokpo	KR	520	34.7903335	126.3847547
201	bornaddress	\N	\N	Methuen MA	US	140	42.7262016	-71.1908924
482	bornaddress	\N	\N	Fareham	GB	432	50.8526637	-1.1783134
838	bornaddress	\N	\N	Mitcham	GB	865	51.4058006	-0.1640787
150	diedaddress	\N	\N	Newton MA	US	106	42.3370414	-71.2092214
575	diedaddress	\N	\N	Rockville MD	US	535	39.0817985	-77.1516844
776	bornaddress	\N	\N	Griffen	AT	806	46.7038006	14.7308073
702	bornaddress	\N	\N	Aberdeen WA	US	700	46.975371	-123.815722
410	bornaddress	\N	\N	Higashimatsuyama	JP	350	36.0421523	139.399796
170	organization	\N	\N	Ashburn VA	US	\N	39.0300191	-77.46964647
438	diedaddress	\N	\N	Brookline MA	US	378	42.3317642	-71.1211635
498	diedaddress	\N	\N	Starnberg	DE	447	48.0001038	11.3508972
553	bornaddress	\N	\N	Visalia CA	US	508	36.3302284	-119.292058
270	bornaddress	\N	\N	Dieppe	FR	203	49.9246182	1.0791444
670	bornaddress	\N	\N	Sorau (now Zory)	PL	661	\N	\N
264	bornaddress	\N	\N	Lagow	PL	198	50.7754877	21.0839837
70	bornaddress	\N	\N	Briesen (now Wąbrzeźno)	PL	43	\N	\N
475	bornaddress	\N	\N	Strelno (now Strzelno)	PL	423	\N	\N
428	organization	\N	\N	Boulder CO	US	\N	40.14159065	-105.4736561
112	bornaddress	\N	\N	Eastbourne	GB	73	50.7664372	0.2781546
661	bornaddress	\N	\N	Hartford CT	US	653	41.765566	-72.690228
418	bornaddress	\N	\N	Cluny	GB	358	57.197856	-2.5007314
713	bornaddress	\N	\N	Tabuse	JP	715	33.9548389	132.0411783
22	bornaddress	\N	\N	Hämeenkyrö	FI	13	61.633333	23.2
590	bornaddress	\N	\N	Burlingame KS	US	556	38.7538947	-95.8349868
184	bornaddress	\N	\N	Haverhill MA	US	130	42.7777829	-71.0767724
870	bornaddress	\N	\N	Voronezh	RU	911	51.6605982	39.2005858
368	bornaddress	\N	\N	Abeokuta	NG	308	7.1547129	3.3467344
445	bornaddress	\N	\N	Nitzkydorf Banat	RO	387	\N	\N
515	bornaddress	\N	\N	Sainte-Foy-lès-Lyon	FR	463	45.7362255	4.7934767
683	bornaddress	\N	\N	Sacramento CA	US	678	38.5810606	-121.493895
500	diedaddress	\N	\N	Arlington VA	US	448	38.88914535	-77.09111151
159	bornaddress	\N	\N	Hildesheim	DE	111	52.1521636	9.9513046
214	bornaddress	\N	\N	Aarberg	CH	150	47.0443346	7.2753004
389	bornaddress	\N	\N	Sochi	RU	328	43.5854823	39.723109
608	bornaddress	\N	\N	Chiran	JP	574	31.3792701	130.4433045
46	diedaddress	\N	\N	Lyon	FR	27	45.7578137	4.8320114
712	bornaddress	\N	\N	Luarca	ES	713	43.5439003	-6.5357408
136	bornaddress	\N	\N	Vyartsilya Karelia	RU	94	62.17645	30.69296
876	bornaddress	\N	\N	Lund	SE	919	55.7029296	13.1929449
569	diedaddress	\N	\N	Blue Point NY	US	527	40.7439872	-73.0345539
668	bornaddress	\N	\N	Bloomington IL	US	660	40.47707	-88.956459
495	bornaddress	\N	\N	Halifax	GB	444	53.7229229	-1.8604874
453	diedaddress	\N	\N	Palma Majorca	ES	395	39.575748	2.656644
169	bornaddress	\N	\N	Gränichen	CH	118	47.3592835	8.0971009
309	bornaddress	\N	\N	Görlitz	DE	241	51.1563185	14.991018
591	diedaddress	\N	\N	Miami FL	US	556	25.7741728	-80.19362
57	bornaddress	\N	\N	Aracataca	CO	36	10.5906011	-74.1876803
436	bornaddress	\N	\N	Dublin	IE	376	53.3493795	-6.2605593
260	bornaddress	\N	\N	Monrovia	LR	192	6.328034	-10.797788
542	bornaddress	\N	\N	Wooster OH	US	495	40.7980976	-81.9397733
301	diedaddress	\N	\N	White Plains NY	US	236	41.0339862	-73.7629097
323	diedaddress	\N	\N	Salamanca	ES	259	40.9651572	-5.6640182
487	diedaddress	\N	\N	Klotzsche	DE	435	51.1186284	13.7781539
587	bornaddress	\N	\N	Vitebsk Belorussia	BY	554	55.1930197	30.2070437
161	bornaddress	\N	\N	Auburn AL	US	112	32.600943	-85.481309
406	bornaddress	\N	\N	Chittagong	BD	346	22.333778	91.8344348
318	bornaddress	\N	\N	Zhejiang Ningbo	CN	253	29.8622194	121.6203873
239	organization	\N	\N	Szeged	HU	\N	46.2546312	20.1486016
194	bornaddress	\N	\N	Portland OR	US	137	45.5202471	-122.674194
882	bornaddress	\N	\N	Canton SD	US	928	43.3009156	-96.5926411
765	bornaddress	\N	\N	Zonnemaire	NL	794	51.7129045	3.9517495
102	diedaddress	\N	\N	Philadelphia PA	US	64	39.9527237	-75.1635262
290	bornaddress	\N	\N	Owosso MI	US	224	42.9975968	-84.1720541
73	bornaddress	\N	\N	Bradford MA	US	45	43.270206	-71.960449
388	bornaddress	\N	\N	Viipuri (now Vyborg)	FI	327	\N	\N
39	bornaddress	\N	\N	Hamburg	DE	24	53.550341	10.000654
737	bornaddress	\N	\N	Columbus OH	US	752	39.9622601	-83.0007065
636	bornaddress	\N	\N	Renton WA	US	617	47.4799078	-122.2034496
63	organization	\N	\N	Santa Barbara CA	US	\N	34.4221319	-119.702667
417	bornaddress	\N	\N	Nelson	NZ	355	-41.2710849	173.2836756
868	bornaddress	\N	\N	Aurich	DE	909	53.4695604	7.4823808
641	bornaddress	\N	\N	Dijon	FR	625	47.3215806	5.0414701
675	bornaddress	\N	\N	Ludwigsburg	DE	667	48.8953937	9.1895147
443	bornaddress	\N	\N	Gelsenkirchen	DE	385	51.5110321	7.0960124
822	bornaddress	\N	\N	Lennep (now Remscheid)	DE	848	51.19158665	7.267563234
752	bornaddress	\N	\N	Ghent	BE	776	51.0538286	3.7250121
535	bornaddress	\N	\N	Mumbai	IN	486	19.0785451	72.878176
158	organization	\N	\N	Sheffield	GB	\N	53.3806626	-1.4702278
329	bornaddress	\N	\N	Leicester	GB	265	52.6362	-1.1331969
316	bornaddress	\N	\N	Hamamatsu	JP	251	34.7109786	137.7259431
680	bornaddress	\N	\N	Leggiuno-Sangiano	IT	674	45.876535	8.618427
627	bornaddress	\N	\N	Chaguanas	TT	601	10.5147394	-61.4076757
50	bornaddress	\N	\N	Vienna	AT	30	48.2083537	16.3725042
735	bornaddress	\N	\N	Omaha NE	US	748	41.2587459	-95.9383758
293	bornaddress	\N	\N	Amherst NS	CA	227	45.8286903	-64.2040548
226	bornaddress	\N	\N	Vicuña	CL	164	-30.0340482	-70.7126702
219	bornaddress	\N	\N	Sulechów	PL	154	52.0854782	15.6259091
819	bornaddress	\N	\N	Magdeburg	DE	845	52.1315889	11.6399609
544	bornaddress	\N	\N	Oak Park IL	US	499	41.8878145	-87.7887615
302	organization	\N	\N	Wilmington DE	US	\N	39.7459468	-75.546589
91	organization	\N	\N	Murray Hill NJ	US	\N	40.6953793	-74.4009849
592	organization	\N	\N	Altenberg; Grünau im Almtal	AT	\N	47.855792	13.954927
251	bornaddress	\N	\N	Kalundborg	DK	182	55.6833793	11.0993619
279	diedaddress	\N	\N	Hanoi	VN	212	21.0283334	105.854041
432	bornaddress	\N	\N	Wola Okrzejska	PL	373	51.7490356	22.1354431
468	bornaddress	\N	\N	Santiniketan	IN	412	23.682708	87.6880296
299	bornaddress	\N	\N	Baltimore MD	US	234	39.2908816	-76.610759
826	bornaddress	\N	\N	Corteno	IT	852	46.166198	10.243457
303	bornaddress	\N	\N	Pusan	KR	237	35.1799528	129.0752365
156	bornaddress	\N	\N	Stainforth	GB	110	54.101956	-2.2749464
649	bornaddress	\N	\N	Fleräng	SE	639	60.6370727	17.3618155
832	diedaddress	\N	\N	Needham MA	US	857	31.9868295	-88.33308822
538	bornaddress	\N	\N	Rosheim	FR	491	48.496421	7.4698832
224	bornaddress	\N	\N	Bremen	DE	161	53.0758196	8.8071646
577	bornaddress	\N	\N	West Hartford CT	US	538	41.769858	-72.752718
65	bornaddress	\N	\N	Neston	GB	40	53.2905172	-3.063792
635	diedaddress	\N	\N	Montagnola	CH	613	45.9829744	8.9184373
750	bornaddress	\N	\N	Rangoon (now Yangon)	MM	774	16.774104	96.167159
578	diedaddress	\N	\N	Waterford CT	US	538	33.3173452	-111.9432008
806	bornaddress	\N	\N	Bad Salzbrunn	PL	835	50.8066959	16.2540971
250	bornaddress	\N	\N	Putney VT	US	181	42.9751766	-72.5215973
496	bornaddress	\N	\N	Middletown CT	US	445	41.531146	-72.644929
188	organization	\N	\N	Zurich	CH	\N	47.3744489	8.5410422
777	bornaddress	\N	\N	Beirut	LB	807	33.8959203	35.47843
666	organization	\N	\N	Innsbruck	AT	\N	47.2654296	11.3927685
692	bornaddress	\N	\N	Windsor ON	CA	687	42.2858536	-82.9780695
403	diedaddress	\N	\N	Duarte CA	US	343	34.1394513	-117.9772873
772	organization	\N	\N	Lisbon	PT	\N	38.7077507	-9.1365919
646	bornaddress	\N	\N	Potsdam NY	US	631	44.6697996	-74.9813349
366	bornaddress	\N	\N	Livingston Manor NY	US	306	41.9003667	-74.8282167
756	diedaddress	\N	\N	Danby VT	US	778	43.3465464	-72.9965342
788	bornaddress	\N	\N	Trönö	SE	818	61.3961376	16.8337173
754	diedaddress	\N	\N	Vézelay	FR	777	47.4657306	3.746285
124	bornaddress	\N	\N	Falmouth KY	US	83	38.6767366	-84.3304592
835	organization	\N	\N	Bucksburn (Scotland)	GB	\N	57.1771092	-2.1824135
492	diedaddress	\N	\N	West Berlin	DE	439	52.5512168	13.1788236
338	diedaddress	\N	\N	Grimstad	NO	273	58.2839967	8.712829119
354	diedaddress	\N	\N	Bergamo	IT	290	45.6944947	9.6698727
157	diedaddress	\N	\N	Canterbury	GB	110	51.2800275	1.0802533
491	diedaddress	\N	\N	Vålådalen	SE	438	63.1485611	12.9667787
658	bornaddress	\N	\N	Troyes	FR	650	48.2971626	4.0746257
328	bornaddress	\N	\N	Alice TX	US	263	27.7522487	-98.0697249
629	bornaddress	\N	\N	Traralgon	AU	605	-38.1946636	146.5381646
167	diedaddress	\N	\N	Winchester	GB	117	51.0612766	-1.3131692
56	bornaddress	\N	\N	Salinas CA	US	35	36.6744117	-121.655037
144	bornaddress	\N	\N	Henan	CN	101	47.9648	126.02
615	bornaddress	\N	\N	Birmingham	GB	582	52.4796992	-1.9026911
362	diedaddress	\N	\N	Barbizon	FR	302	48.4447386	2.6064391
67	diedaddress	\N	\N	Rexburg ID	US	41	43.8235163	-111.787022
660	bornaddress	\N	\N	Albertville	FR	651	45.6754622	6.3925417
412	bornaddress	\N	\N	Schickenhof	DE	352	49.6407345	11.9406665
848	bornaddress	\N	\N	Königshütte (now Chorzów)	PL	878	\N	\N
696	diedaddress	\N	\N	Alton	GB	690	51.1489036	-0.9757677
74	organization	\N	\N	Prague	CZ	\N	50.0874654	14.4212535
122	diedaddress	\N	\N	Winchester MA	US	81	39.1852184	-78.1652404
729	organization	\N	\N	New Brunswick NJ	US	\N	40.4862174	-74.4518173
341	bornaddress	\N	\N	Nyeri	KE	280	-0.4192962	36.9517005
90	bornaddress	\N	\N	Madison WI	US	56	43.074761	-89.3837613
526	diedaddress	\N	\N	Surfside FL	US	474	25.8784285	-80.1256007
334	bornaddress	\N	\N	Calcutta	IN	271	22.5726459	88.3638953
460	bornaddress	\N	\N	Cresco IA	US	404	43.3736148	-92.1161444
34	organization	\N	\N	Cambridge MA	US	\N	42.3655767	-71.1040018
332	diedaddress	\N	\N	Stanger	ZA	268	-29.3383782	31.2881205
865	bornaddress	\N	\N	Alliston	CA	902	46.0544878	-62.62522891
11	bornaddress	\N	\N	Bristol	GB	6	51.4538022	-2.5972985
365	diedaddress	\N	\N	Épernay	FR	304	49.042561	3.9528655
197	diedaddress	\N	\N	College Station TX	US	138	30.6183939	-96.3455991
190	organization	\N	\N	Berlin-Dahlem	DE	\N	52.4662332	13.2982478
162	bornaddress	\N	\N	Pongaroa	NZ	113	-40.5428315	176.1922011
648	diedaddress	\N	\N	Zushi	JP	634	35.3040672	139.5838447
94	diedaddress	\N	\N	Osaka	JP	59	34.6937569	135.5014539
457	organization	\N	\N	Graz	AT	\N	47.0708678	15.4382786
168	organization	\N	\N	Basel	CH	\N	47.5581077	7.5878261
458	bornaddress	\N	\N	Laibach (now Ljubljana)	SI	401	\N	\N
520	bornaddress	\N	\N	Sighet	RO	469	47.9283242	23.8915583
794	bornaddress	\N	\N	Kislovodsk	RU	823	43.9128743	42.7192186
359	bornaddress	\N	\N	Yamanashi Prefecture	JP	299	35.6399328	138.6380495
654	bornaddress	\N	\N	Fort Worth TX	US	647	32.753177	-97.3327459
430	bornaddress	\N	\N	Ivano-Frankivsk	UA	367	48.9224763	24.710334
276	bornaddress	\N	\N	Elizabeth NJ	US	210	40.6639916	-74.2107006
762	bornaddress	\N	\N	Mürzzuschlag	AT	792	47.6053538	15.6723805
448	bornaddress	\N	\N	Shanghai	CN	391	31.2323437	121.4691024
815	organization	\N	\N	Beckenham	GB	\N	51.4070938	-0.0303183
146	bornaddress	\N	\N	Genoa	IT	103	44.40726	8.9338624
130	organization	\N	\N	Princeton NJ	US	\N	40.3496953	-74.6597376
26	organization	\N	\N	New Haven CT	US	\N	41.308659	-72.925298
640	diedaddress	\N	\N	Lexington MA	US	624	42.4473175	-71.2245003
700	diedaddress	\N	\N	Saco ME	US	698	43.5009176	-70.4428286
896	bornaddress	\N	\N	Montclair NJ	US	944	40.841757	-74.201489
118	bornaddress	\N	\N	Monessen PA	US	78	40.1484053	-79.8878254
620	organization	\N	\N	Bloomington IN	US	\N	39.1670396	-86.5342881
901	bornaddress	\N	\N	Plzen	CZ	949	49.7477415	13.3775249
893	bornaddress	\N	\N	Duluth MN	US	941	46.7729322	-92.1251218
719	bornaddress	\N	\N	Ganzhou	CN	722	25.8332103	114.9287362
674	bornaddress	\N	\N	Saratov	RU	666	51.530018	46.034683
399	bornaddress	\N	\N	Hume IL	US	339	39.7967015	-87.8686414
85	bornaddress	\N	\N	Savur	TR	51	37.5368396	40.8873746
245	diedaddress	\N	\N	Cannes	FR	175	43.5515198	7.0134418
834	bornaddress	\N	\N	Germiston	ZA	859	-26.229444	28.180556
21	bornaddress	\N	\N	Mårbacka	SE	12	57.9763896	15.2595293
82	bornaddress	\N	\N	Charleston SC	US	50	32.7884363	-79.9399309
246	diedaddress	\N	\N	Oyster Bay NY	US	176	40.7696568	-73.49986084
631	bornaddress	\N	\N	Lille	FR	607	50.6365654	3.0635282
539	organization	\N	\N	Vancouver	CA	\N	49.2608724	-123.113952
288	bornaddress	\N	\N	Brisbane	AU	222	-27.4689682	153.0234991
397	bornaddress	\N	\N	Rouen	FR	338	49.4404591	1.0939658
142	organization	\N	\N	Geneva	CH	\N	46.2017559	6.1466014
494	bornaddress	\N	\N	Syracuse NY	US	443	43.0481221	-76.1474244
582	bornaddress	\N	\N	Gaomi	CN	545	36.3654065	119.8005385
554	diedaddress	\N	\N	Bourne	GB	509	52.7682345	-0.3771579
262	bornaddress	\N	\N	Wels	AT	196	48.1565472	14.0243752
452	bornaddress	\N	\N	Bergen	NO	393	60.3943055	5.3259192
583	bornaddress	\N	\N	Berne IN	US	547	40.6578242	-84.9519115
324	diedaddress	\N	\N	Llangarron	GB	260	51.8861918	-2.6829994
30	organization	\N	\N	Chicago IL	US	\N	41.8755616	-87.6244212
14	bornaddress	\N	\N	Ashland NH	US	7	43.69568	-71.630859
632	diedaddress	\N	\N	Shipston-on-Stour	GB	610	52.0630181	-1.6247264
66	organization	\N	\N	Batavia IL	US	\N	41.8500284	-88.3125738
828	bornaddress	\N	\N	Lexington KY	US	854	38.0464066	-84.4970393
76	diedaddress	\N	\N	Bad Homburg vor der Höhe	DE	47	50.2267699	8.6169093
804	bornaddress	\N	\N	Qunu	ZA	832	-31.795771	28.614906
892	bornaddress	\N	\N	Ramelton	IE	940	55.0369966	-7.6520672
760	organization	\N	\N	Harlow	GB	\N	51.7676194	0.0974893
530	bornaddress	\N	\N	Bukavu	CD	480	-2.5055839	28.8594885
87	organization	\N	\N	Walnut Creek CA	US	\N	37.9020731	-122.0618702
677	diedaddress	\N	\N	Saint-Cyr-sur-Loire	FR	671	47.4052448	0.6658199
154	organization	\N	\N	Jerusalem	IL	\N	31.7788242	35.2257626
656	diedaddress	\N	\N	Indianapolis IN	US	648	39.7683331	-86.1583502
502	diedaddress	\N	\N	Lafayette CA	US	450	37.8857582	-122.1180201
481	bornaddress	\N	\N	Waltersdorf (now Niegoslawice)	PL	431	\N	\N
254	diedaddress	\N	\N	Byhalia MS	US	183	34.8772655	-89.6872225
45	bornaddress	\N	\N	Cherbourg	FR	27	49.6425343	-1.6249565
711	diedaddress	\N	\N	Ascona	CH	712	46.1554222	8.7707865
637	bornaddress	\N	\N	Willesden	GB	618	51.5466216	-0.2358661
132	diedaddress	\N	\N	New Jersey NJ	US	88	40.0155412	-74.8280828
758	bornaddress	\N	\N	Jefferson City MO	US	782	38.577359	-92.1724265
5	organization	\N	\N	Göttingen	DE	\N	51.5328328	9.9351811
54	bornaddress	\N	\N	Johannesburg	ZA	34	-26.205	28.049722
52	bornaddress	\N	\N	Sidney OH	US	31	40.284241	-84.1555267
802	bornaddress	\N	\N	Uniontown PA	US	830	39.900076	-79.7164326
477	bornaddress	\N	\N	Novaya Chigla	RU	425	51.221802	40.480701
595	organization	\N	\N	Nedlands	AU	\N	-31.9799209	115.8057167
269	bornaddress	\N	\N	Ulm	DE	202	48.3974003	9.9934336
576	bornaddress	\N	\N	Thorshavn	DK	536	\N	\N
252	diedaddress	\N	\N	Lillehammer	NO	182	61.1333408	10.42658554
141	bornaddress	\N	\N	Rymanow	PL	99	49.576131	21.8676433
137	organization	\N	\N	Worcester MA	US	\N	42.2625621	-71.8018877
113	diedaddress	\N	\N	Brighton	GB	73	50.8214626	-0.1400561
241	bornaddress	\N	\N	Northampton	GB	173	52.2378853	-0.8963639
192	diedaddress	\N	\N	Locarno	CH	134	46.1695739	8.7954859
229	diedaddress	\N	\N	Rehovot	IL	165	31.8952532	34.8105616
864	diedaddress	\N	\N	Putney Heath	GB	901	51.4407022	-0.2348616183
268	diedaddress	\N	\N	Tromsø	NO	201	69.6516345	18.9558585
461	bornaddress	\N	\N	Modica	IT	407	36.8589209	14.7613018
830	bornaddress	\N	\N	Koenigsberg (now Kaliningrad)	RU	856	\N	\N
198	organization	\N	\N	Los Angeles CA	US	\N	34.0536909	-118.242766
422	bornaddress	\N	\N	Todmorden	GB	361	53.7137251	-2.097753
243	bornaddress	\N	\N	Neisse (now Nysa)	PL	174	51.9555466	14.7208773
222	bornaddress	\N	\N	Pretoria	ZA	157	-25.7459277	28.1879101
183	diedaddress	\N	\N	Branford CT	US	129	41.30981345	-72.92990737
29	bornaddress	\N	\N	Bogotá	CO	17	4.6529539	-74.0835643
308	bornaddress	\N	\N	Vladivostok	RU	240	43.1150678	131.8855768
204	bornaddress	\N	\N	Langford Grove Maldon Essex	GB	142	51.7311	0.67463
358	bornaddress	\N	\N	Newcastle upon Tyne	GB	298	54.9738474	-1.6131572
258	diedaddress	\N	\N	Lafayette IN	US	189	40.4191229	-86.8919011
455	bornaddress	\N	\N	Karcag	HU	397	47.314646	20.9240941
732	bornaddress	\N	\N	Tivoli	IT	739	41.960922	12.798884
31	bornaddress	\N	\N	East Orange NJ	US	18	40.767323	-74.2048677
49	organization	\N	\N	Oxford	GB	\N	51.7520131	-1.2578499
327	organization	\N	\N	San Francisco CA	US	\N	37.7790262	-122.419906
247	bornaddress	\N	\N	Jamaica Plain MA (now Boston MA)	US	178	42.305915	-71.119164
604	bornaddress	\N	\N	Kattowitz (now Katowice)	PL	569	\N	\N
375	organization	\N	\N	Mülheim an der Ruhr	DE	\N	51.4272925	6.8829192
601	bornaddress	\N	\N	Buchs	CH	564	47.3910322	8.0692413
808	diedaddress	\N	\N	Peredelkino	RU	836	55.6562911	37.3556338
771	diedaddress	\N	\N	Knokke	BE	801	51.3464863	3.2876314
891	organization	\N	\N	Madison NJ	US	\N	40.7598227	-74.417097
23	diedaddress	\N	\N	Helsinki	FI	13	60.1674881	24.9427473
573	bornaddress	\N	\N	Lorenzkirch	DE	531	51.3534695	13.2479165
265	diedaddress	\N	\N	Burgberg	DE	198	48.5813154	10.25707571
108	diedaddress	\N	\N	Ocho Rios	JM	68	18.4081045	-77.1011092
71	diedaddress	\N	\N	Muskau	DE	43	51.5470046	14.7215146
867	bornaddress	\N	\N	Zamora	MX	908	19.9828948	-102.28363
128	bornaddress	\N	\N	Moscow	RU	86	55.7505412	37.6174782
845	diedaddress	\N	\N	Bilthoven	NL	875	52.1289693	5.2046134
180	diedaddress	\N	\N	Belmont MA	US	127	37.5164926	-122.2941914
476	diedaddress	\N	\N	Kyoto	JP	424	35.021041	135.7556075
278	bornaddress	\N	\N	Nam Ha province	VN	212	18.3358904	105.9003199
343	bornaddress	\N	\N	Pressburg (now Bratislava)	SK	281	48.100521	17.113292
837	organization	\N	\N	Bodmin	GB	\N	50.470725	-4.7243205
86	bornaddress	\N	\N	Beshasha	ET	52	7.7958639	36.4770633
185	bornaddress	\N	\N	Gorizia	IT	131	45.9451611	13.625261
3	organization	\N	\N	Stanford CA	US	\N	37.4265407	-122.1703055
844	bornaddress	\N	\N	Waalwijk	NL	875	51.68733715	5.01730794
625	bornaddress	\N	\N	Jena	DE	598	50.9281717	11.5879359
488	bornaddress	\N	\N	Kingston Hill	GB	436	50.6167132	-2.0619012
866	diedaddress	\N	\N	Newfoundland	CA	902	49.12120935	-56.64031114
53	bornaddress	\N	\N	Bayonne	FR	33	43.4945144	-1.4736657
129	bornaddress	\N	\N	Klerksdorp	ZA	87	-26.8625383	26.6656814
283	organization	\N	\N	Greenwich CT	US	\N	41.024794	-73.631449
780	organization	\N	\N	Tempe AZ	US	\N	33.4255117	-111.9400164
462	diedaddress	\N	\N	Naples	IT	407	40.8358846	14.2487679
181	bornaddress	\N	\N	Yakima WA	US	128	46.601557	-120.510842
885	bornaddress	\N	\N	Atherton	AU	932	-17.2674058	145.4761663
725	bornaddress	\N	\N	Casablanca	MA	732	33.5945144	-7.6200284
497	organization	\N	\N	Gaithersburg MD	US	\N	39.1399187	-77.1929215
633	bornaddress	\N	\N	Zloczov	UA	611	\N	\N
465	diedaddress	\N	\N	Freiburg	DE	410	47.9960901	7.8494005
490	bornaddress	\N	\N	Klippan	SE	438	56.1340267	13.1332245
353	bornaddress	\N	\N	Imperia	IT	290	43.8861996	8.0285359
173	diedaddress	\N	\N	Ndola	ZM	120	-12.9693056	28.6365894
220	organization	\N	\N	Dallas TX	US	\N	32.7762719	-96.7968559
234	diedaddress	\N	\N	Siena	IT	168	43.3185536	11.3316533
809	bornaddress	\N	\N	Masterton	NZ	837	-40.9495524	175.6594413
298	organization	\N	\N	Haifa	IL	\N	32.8191218	34.9983856
210	bornaddress	\N	\N	Taylorville IL	US	147	39.5487452	-89.2941549
610	organization	\N	\N	Waltham MA	US	\N	42.3756401	-71.2358004
706	bornaddress	\N	\N	Merriman NE	US	707	42.919783	-101.7004407
442	diedaddress	\N	\N	Lanzarote	ES	380	28.0379237	-15.5801718
740	diedaddress	\N	\N	Ayot St. Lawrence	GB	758	51.83509665	-0.2580284427
505	bornaddress	\N	\N	Rendcombe	GB	452	51.7859976	-1.9723485
846	diedaddress	\N	\N	High Wycombe	GB	876	51.6317449	-0.75596
345	organization	\N	\N	Groningen	NL	\N	53.2190652	6.5680077
178	diedaddress	\N	\N	Lübeck	DE	126	53.866444	10.684738
686	bornaddress	\N	\N	Damanhur	EG	681	31.0374982	30.4710625
618	diedaddress	\N	\N	Blockley	GB	589	52.02239065	-1.740822134
10	organization	\N	\N	London	GB	\N	51.5073359	-0.12765
337	bornaddress	\N	\N	Lom	NO	273	61.7142578	8.425897734
373	bornaddress	\N	\N	Norwalk CT	US	311	32.9754015	-117.0390357
15	organization	\N	\N	Canberra	AU	\N	-35.2975906	149.1012676
534	organization	\N	\N	Waterloo	CA	\N	43.4652699	-80.5222961
370	diedaddress	\N	\N	Bridgetown	BB	309	13.0977832	-59.6184184
275	bornaddress	\N	\N	Harborne	GB	209	52.4595363	-1.9503355
533	bornaddress	\N	\N	Barger-Compascuum	NL	484	52.754792	7.042117
571	bornaddress	\N	\N	Lahore	PK	530	31.5656822	74.3141829
509	organization	\N	\N	Sèvres	FR	\N	48.8247407	2.2127083
616	bornaddress	\N	\N	Guatemala City	GT	588	14.6424667	-90.5131361
584	bornaddress	\N	\N	Siegen	DE	548	50.8749804	8.0227233
300	diedaddress	\N	\N	Los Gatos CA	US	235	37.226611	-121.9746797
427	bornaddress	\N	\N	Akron OH	US	364	41.083064	-81.518485
253	bornaddress	\N	\N	New Albany MS	US	183	40.08403005	-82.81330686
863	bornaddress	\N	\N	Almora	IN	901	29.601699	79.6632635
207	organization	\N	\N	Lidingö Stockholm	SE	\N	59.3669445	18.1820897
440	diedaddress	\N	\N	Perranarworthal	GB	379	50.2086447	-5.1164014
92	bornaddress	\N	\N	Amoy	CN	57	24.4801069	118.0853479
148	organization	\N	\N	Richmond VA	US	\N	37.5385087	-77.43428
736	bornaddress	\N	\N	Nagasaki	JP	750	32.7501611	129.8781002
881	diedaddress	\N	\N	Coral Gables FL	US	927	25.72149	-80.2683838
811	bornaddress	\N	\N	Chabris	FR	838	47.2527118	1.6514258
548	bornaddress	\N	\N	Clausthal (now Clausthal-Zellerfeld)	DE	503	51.808347	10.340169
88	bornaddress	\N	\N	Pasadena CA	US	54	34.1476507	-118.1441551
330	bornaddress	\N	\N	Kristiania (now Oslo)	NO	267	\N	\N
314	bornaddress	\N	\N	Nice	FR	248	43.7009358	7.2683912
4	bornaddress	\N	\N	Little Falls MN	US	2	45.9763545	-94.3625024
13	organization	\N	\N	Rochester NY	US	\N	43.157285	-77.615214
413	diedaddress	\N	\N	Traunstein	DE	352	47.8701474	12.6423403
59	bornaddress	\N	\N	Pinsk	BY	37	52.1113862	26.1025274
99	organization	\N	\N	Bern	CH	\N	46.9484742	7.4521749
561	bornaddress	\N	\N	Swanage	GB	518	50.6086976	-1.9571971
402	bornaddress	\N	\N	Possum Trot KY	US	343	37.0056129	-88.4305964
624	bornaddress	\N	\N	Raton NM	US	596	36.8979234	-104.4354816
416	bornaddress	\N	\N	Houston TX	US	354	29.7589382	-95.3676974
117	organization	\N	\N	Bethesda MD	US	\N	38.98127255	-77.12335871
854	bornaddress	\N	\N	Mit Abu al-Kawm	EG	887	30.63627	30.91312
797	organization	\N	\N	Louvain	BE	\N	50.879202	4.7011675
664	bornaddress	\N	\N	Mart TX	US	656	31.5423911	-96.8336015
672	bornaddress	\N	\N	Jhang Maghiāna	PK	664	33.7557	73.16161
208	bornaddress	\N	\N	Stenstorp	SE	144	58.2713175	13.7133276
693	diedaddress	\N	\N	Lincoln MA	US	687	40.8088861	-96.7077751
68	organization	\N	\N	Toulouse	FR	\N	43.6044622	1.4442469
721	bornaddress	\N	\N	Juvisy-sur-Orge	FR	725	48.6904063	2.373809
459	bornaddress	\N	\N	Cedarville IL	US	402	42.3759906	-89.6331674
374	bornaddress	\N	\N	Geneva NE	US	313	40.5257539	-97.6027667
747	bornaddress	\N	\N	Zelvas	LT	764	\N	\N
560	bornaddress	\N	\N	Uchiko	JP	517	33.5495987	132.6500056
593	bornaddress	\N	\N	Iasi	RO	558	47.1615598	27.5837814
823	diedaddress	\N	\N	Ipswich	GB	849	52.0579324	1.1528095
790	bornaddress	\N	\N	Aldea Chimel	GT	820	14.5481527	-90.7254798
605	bornaddress	\N	\N	Usman	RU	570	52.0506929	39.7399996
231	diedaddress	\N	\N	Kraków	PL	166	50.0619474	19.9368564
81	organization	\N	\N	Brooklyn NY	US	\N	40.6526006	-73.9497211
336	diedaddress	\N	\N	Ordrup	DK	272	55.5242231	11.7195196
274	diedaddress	\N	\N	Twin Falls ID	US	206	42.5704456	-114.4602554
557	bornaddress	\N	\N	Bombay (now Mumbai)	IN	514	18.913541	72.816588
441	bornaddress	\N	\N	Azinhaga	PT	380	39.3503597	-8.5281677
782	diedaddress	\N	\N	Paradise Valley AZ	US	810	33.5324295	-111.9505123
419	diedaddress	\N	\N	Aberdeen	GB	358	57.1482429	-2.0928095
189	bornaddress	\N	\N	Mulhouse	FR	133	47.7467233	7.3389937
899	bornaddress	\N	\N	Stroud	GB	947	51.745424	-2.2198605
874	diedaddress	\N	\N	Gladwyne PA	US	914	40.0397304	-75.2791788
602	diedaddress	\N	\N	Wollerau	CH	564	47.1957261	8.7194595
884	bornaddress	\N	\N	Bradford	GB	930	53.7944229	-1.7519186
612	bornaddress	\N	\N	Lancashire	GB	577	53.8611703	-2.565088792
277	diedaddress	\N	\N	Unkel	DE	211	50.5996127	7.2157397
160	organization	\N	\N	Cleveland OH	US	\N	41.4996574	-81.6936772
248	bornaddress	\N	\N	Dinant	BE	180	50.2591813	4.9130588
191	bornaddress	\N	\N	Karlsruhe	DE	134	49.0068705	8.4034195
886	organization	\N	\N	Yorktown Heights NY	US	\N	41.2709274	-73.7776336
426	diedaddress	\N	\N	Corona del Mar CA	US	363	33.5995916	-117.8737398
829	diedaddress	\N	\N	Mulrany	IE	855	53.9071321	-9.7740713
378	bornaddress	\N	\N	Germantown PA	US	318	40.0434449	-75.1801775
72	organization	\N	\N	Bar Harbor ME	US	\N	44.3876378	-68.2043361
123	bornaddress	\N	\N	Lansing IA	US	82	43.3618729	-91.2156721
315	bornaddress	\N	\N	Arequipa	PE	250	-16.3988667	-71.5369607
342	diedaddress	\N	\N	Nairobi	KE	280	-1.2832533	36.8172449
855	bornaddress	\N	\N	Agrigento Sicily	IT	890	37.3122991	13.57465
295	organization	\N	\N	Brussels	BE	\N	50.8465573	4.351697
233	bornaddress	\N	\N	Kingston ON	CA	168	44.3054151	-76.4283781
751	bornaddress	\N	\N	Maillane	FR	775	43.8325251	4.7825111
540	bornaddress	\N	\N	Blackpool	GB	492	53.8179442	-3.0509812
697	bornaddress	\N	\N	Northfield MN	US	693	44.4582041	-93.161159
791	bornaddress	\N	\N	Garding	DE	821	54.3295733	8.7793889
211	bornaddress	\N	\N	Greenville SC	US	148	34.851354	-82.3984882
401	bornaddress	\N	\N	Hamadan	IR	342	34.7992888	48.5152464
764	diedaddress	\N	\N	Orange CA	US	793	33.7872568	-117.850308
115	diedaddress	\N	\N	Austin TX	US	76	30.2711286	-97.7436995
839	diedaddress	\N	\N	Annandale VA	US	866	38.838491	-77.20852376
841	bornaddress	\N	\N	Sumter SC	US	870	33.9204354	-80.3414693
196	bornaddress	\N	\N	Gravesend	GB	138	51.4424747	0.3694468
33	bornaddress	\N	\N	New York NY	US	19	40.7127281	-74.0060152
140	diedaddress	\N	\N	Munich	DE	98	48.1371079	11.5753822
60	organization	\N	\N	Fairfax VA	US	\N	38.8462236	-77.3063733
731	diedaddress	\N	\N	Hyannis MA	US	737	41.6534847	-70.2823732
493	diedaddress	\N	\N	Tucson AZ	US	442	32.2228765	-110.974847
529	bornaddress	\N	\N	Plains GA	US	478	32.0340872	-84.3926633
296	bornaddress	\N	\N	Etterbeek	BE	229	50.8361447	4.3861737
621	organization	\N	\N	Sapporo	JP	\N	43.061936	141.3542924
537	bornaddress	\N	\N	Worms	DE	489	49.6302618	8.3620898
206	diedaddress	\N	\N	Rome	IT	143	41.8933203	12.4829321
673	bornaddress	\N	\N	Dordrecht	NL	665	51.7958812	4.6779351
271	diedaddress	\N	\N	San Marino CA	US	204	34.1215947	-118.105739
753	bornaddress	\N	\N	Clamecy	FR	777	49.4286111	3.3619444
763	bornaddress	\N	\N	Paterson NJ	US	793	40.9167654	-74.171811
628	bornaddress	\N	\N	Linköping	SE	604	58.4098135	15.6245252
469	bornaddress	\N	\N	Rio de Janeiro	BR	416	-22.9110137	-43.2093727
858	bornaddress	\N	\N	Växjö	SE	892	56.8787183	14.8094385
687	bornaddress	\N	\N	Wloclawek	PL	683	52.66017	19.0722963
478	bornaddress	\N	\N	Guebwiller	FR	427	47.9094629	7.2113271
474	organization	\N	\N	Garching	DE	\N	48.2513878	11.6509662
325	bornaddress	\N	\N	Wisbech Cambridgeshire	GB	262	52.6651733	0.1606824
424	organization	\N	\N	Irvine CA	US	\N	33.6856969	-117.8259819
104	bornaddress	\N	\N	Adelaide	AU	66	-34.9281805	138.5999312
377	bornaddress	\N	\N	Vik	SE	317	57.382993	12.5740246
286	bornaddress	\N	\N	Milford MA	US	221	41.2222218	-73.0570603
527	bornaddress	\N	\N	Minnigaff	GB	476	54.9616075	-4.4793821
138	organization	\N	\N	Leipzig	DE	\N	51.3406321	12.3747329
644	bornaddress	\N	\N	Chorley	GB	628	53.6531915	-2.6294313
421	diedaddress	\N	\N	Concord MA	US	359	43.207178	-71.537476
350	bornaddress	\N	\N	Rufford near Chesterfield	GB	288	53.63375	-2.81662
588	bornaddress	\N	\N	Sioux City IA	US	555	42.4966815	-96.4058782
720	bornaddress	\N	\N	Fukuoka	JP	724	33.5898988	130.4017509
630	diedaddress	\N	\N	Sallanches	FR	606	45.9361246	6.6302551
852	bornaddress	\N	\N	Kilmaurs	GB	886	55.6383988	-4.5269606
507	bornaddress	\N	\N	Canton MA	US	457	32.612602	-90.0367512
842	bornaddress	\N	\N	Bad Kissingen	DE	872	50.1985698	10.0746833
663	diedaddress	\N	\N	Huntington NY	US	654	40.868154	-73.425676
111	bornaddress	\N	\N	Rye NY	US	72	40.9808209	-73.684294
873	bornaddress	\N	\N	Casteldàwson	GB	913	\N	\N
730	bornaddress	\N	\N	Priluka (now Nova Pryluka)	UA	737	49.36667	28.36667
807	diedaddress	\N	\N	Agnetendorf (now Jagniatków)	PL	835	\N	\N
532	bornaddress	\N	\N	Guelph	CA	483	43.5460516	-80.2493276
657	bornaddress	\N	\N	Nicosia	CY	649	35.1746503	33.3638783
833	bornaddress	\N	\N	Kumasi	GH	858	6.6985605	-1.6233086
405	bornaddress	\N	\N	Oakland CA	US	345	37.8044557	-122.271356
836	bornaddress	\N	\N	Sarajevo	BA	864	43.8519774	18.3866868
581	bornaddress	\N	\N	Nizhny Tagil	RU	542	57.905149	59.9508466
531	bornaddress	\N	\N	Kojo	IQ	481	36.179423	41.909093
103	bornaddress	\N	\N	Lochfield	GB	65	55.8314459	-4.4152067
722	bornaddress	\N	\N	Gjesdal	NO	727	58.83120885	6.277085088
862	diedaddress	\N	\N	Stapleford Cambridgeshire	GB	896	52.1458532	0.1504635
361	bornaddress	\N	\N	Autun	FR	302	46.9510313	4.2989478
718	diedaddress	\N	\N	Poznan	PL	721	52.4082663	16.9335199
444	diedaddress	\N	\N	Eugene OR	US	386	44.0505054	-123.0950506
64	bornaddress	\N	\N	Weimar	DE	39	50.9810486	11.3296637
710	bornaddress	\N	\N	Frauenfeld	CH	712	47.5561915	8.8963347
714	bornaddress	\N	\N	Brest Litovsk	BY	716	52.093751	23.6851851
567	bornaddress	\N	\N	Ålesund	NO	525	62.76712545	6.168828066
339	bornaddress	\N	\N	Ruse	BG	274	43.8480413	25.9542057
786	bornaddress	\N	\N	Oceanside NY	US	815	40.6390936	-73.6399765
55	diedaddress	\N	\N	Cape Town	ZA	34	-33.928992	18.417396
676	bornaddress	\N	\N	Olympus TN	US	668	47.5266377	-122.1676737
598	bornaddress	\N	\N	Grand Valley CO	US	561	41.7211706	-79.5375503
456	bornaddress	\N	\N	Euskirchen	DE	400	50.66129	6.7871681
709	bornaddress	\N	\N	Hansdorf (now Lawice)	PL	709	\N	\N
109	diedaddress	\N	\N	Great Barrington MA	US	69	42.1939364	-73.362773
116	organization	\N	\N	Ottawa	CA	\N	45.4208777	-75.6901106
667	bornaddress	\N	\N	Peggau	AT	659	47.206807	15.3451254
36	bornaddress	\N	\N	Örebro	SE	23	59.2747287	15.2151181
127	bornaddress	\N	\N	Nantes	FR	85	47.2186371	-1.5541362
195	diedaddress	\N	\N	Big Sur CA	US	137	36.270241	-121.807454
689	diedaddress	\N	\N	Pomona CA	US	684	34.0553813	-117.7517496
38	organization	\N	\N	Halle	DE	\N	52.4523605	6.9192787
319	bornaddress	\N	\N	Leeds	GB	257	53.7974185	-1.5437941
814	diedaddress	\N	\N	Manila	PH	841	14.5906346	120.9799964
715	bornaddress	\N	\N	Dolac	BA	717	44.0847656	17.9903455
281	diedaddress	\N	\N	Warsaw	PL	215	52.2319581	21.0067249
821	diedaddress	\N	\N	Menlo Park CL	US	846	37.4519671	-122.177992
827	bornaddress	\N	\N	Soignies	BE	853	50.579203	4.0685604
333	bornaddress	\N	\N	Heredia	CR	269	9.9981515	-84.1170163
360	bornaddress	\N	\N	Tramelan	CH	301	47.223677	7.1030216
887	bornaddress	\N	\N	Batley	GB	935	53.716564	-1.6363856
27	bornaddress	\N	\N	Champaign IL	US	15	40.104535	-88.272157
572	organization	\N	\N	Bonn	DE	\N	50.735851	7.10066
860	bornaddress	\N	\N	Iráklion	GR	894	35.33908	25.1332843
900	organization	\N	\N	Jülich	DE	\N	50.9220931	6.3611015
556	bornaddress	\N	\N	Staunton VA	US	513	38.1495947	-79.072557
506	bornaddress	\N	\N	Nara	JP	455	34.6845445	135.8048359
671	organization	\N	\N	Trieste	IT	\N	45.6496485	13.7772781
285	organization	\N	\N	Research Triangle Park NC	US	\N	35.8923773	-78.86588989
291	diedaddress	\N	\N	Syosset NY	US	224	40.8262101	-73.502068
363	bornaddress	\N	\N	Ostend	BE	303	51.2258565	2.919496
723	organization	\N	\N	Weston Creek	AU	\N	-35.343397	149.0477964
470	bornaddress	\N	\N	Halifax Nova Scotia	CA	417	44.648618	-63.5859487
803	bornaddress	\N	\N	Uskup (now Skopje)	MK	831	\N	\N
272	bornaddress	\N	\N	Blankenburg	DE	205	51.2031236	10.7476184
223	diedaddress	\N	\N	Heiden	CH	158	47.4421715	9.532089
796	bornaddress	\N	\N	Svartbjörnsbyn	SE	824	65.8470216	21.7031274
499	bornaddress	\N	\N	Newburyport MA	US	448	42.8125913	-70.8772751
101	bornaddress	\N	\N	Hanover	DE	64	52.3744779	9.7385532
799	bornaddress	\N	\N	Thames Ditton	GB	827	51.389182	-0.3290769
230	bornaddress	\N	\N	Śeteniai	LT	166	55.3964342	24.0353929
825	organization	\N	\N	Pavia	IT	\N	45.1860043	9.1546375
305	bornaddress	\N	\N	Winterthur	CH	238	47.4991723	8.7291498
890	bornaddress	\N	\N	Vidisha	IN	939	23.5208128	77.8063184
392	bornaddress	\N	\N	Holbeach	GB	332	52.80421	0.0180043
547	bornaddress	\N	\N	Wilno (now Vilnius)	LT	500	\N	\N
255	bornaddress	\N	\N	Arlington SD	US	184	44.364413	-97.133121
215	bornaddress	\N	\N	Wichita KS	US	151	37.6922361	-97.3375448
748	bornaddress	\N	\N	Riga	LV	770	56.9493977	24.1051846
546	organization	\N	\N	New Orleans LA	US	\N	29.9759983	-90.0782127
805	bornaddress	\N	\N	Vishneva	BY	834	\N	\N
121	organization	\N	\N	Medford MA	US	\N	42.4184296	-71.1061639
225	bornaddress	\N	\N	Val di Castello	IT	163	46.503456	10.675307
165	bornaddress	\N	\N	Winnipeg	CA	116	49.8955367	-97.1384584
317	organization	\N	\N	Beijing	CN	\N	39.9057136	116.3912972
175	bornaddress	\N	\N	Madrid	ES	123	40.4167047	-3.7035825
466	bornaddress	\N	\N	Victoria BC	CA	411	48.4283182	-123.3649533
510	bornaddress	\N	\N	Fleurier	CH	459	46.904275	6.58004
395	diedaddress	\N	\N	Oak Lawn IL	US	337	41.7108662	-87.7581081
611	bornaddress	\N	\N	Kansas City MO	US	576	39.100105	-94.5781416
205	bornaddress	\N	\N	Bologna	IT	143	44.4938203	11.3426327
51	organization	\N	\N	Urbana IL	US	\N	40.1117174	-88.207301
420	bornaddress	\N	\N	Raipur	IN	359	21.2380912	81.6336993
798	bornaddress	\N	\N	Longlier	BE	826	49.8562222	5.4609005
609	bornaddress	\N	\N	Burnham-on-Sea	GB	575	51.2377356	-2.998695
382	bornaddress	\N	\N	Lenoir NC	US	323	35.9140196	-81.5389849
236	bornaddress	\N	\N	Petilla de Aragón	ES	170	42.461519	-1.0925498
467	diedaddress	\N	\N	Harrison NY	US	411	40.9689871	-73.71263
232	bornaddress	\N	\N	Calais	FR	167	50.9524769	1.8538446
98	bornaddress	\N	\N	Sydney	CA	62	46.137977	-60.194092
779	diedaddress	\N	\N	Deerfield MA	US	809	42.5442595	-72.6044771
218	bornaddress	\N	\N	Albuquerque NM	US	153	35.0841034	-106.650985
508	diedaddress	\N	\N	Buffalo NY	US	457	42.8867166	-78.8783922
840	organization	\N	\N	Martinsried	DE	\N	48.10882	11.4508007
518	diedaddress	\N	\N	Thieuloy-Saint-Antoine	FR	466	49.633719	1.9461391
568	bornaddress	\N	\N	Kobe	JP	526	34.6932379	135.1943764
528	bornaddress	\N	\N	Toyama City	JP	477	36.7067505	137.2140557
559	diedaddress	\N	\N	Penrhyndeudraeth	GB	516	52.9300385	-4.0668694
93	bornaddress	\N	\N	Tokyo	JP	59	35.6840574	139.7744912
850	bornaddress	\N	\N	Cardiff	GB	884	51.4816546	-3.1791934
77	organization	\N	\N	Copenhagen	DK	\N	55.6867243	12.5700724
519	diedaddress	\N	\N	Tunbridge Wells	GB	467	51.1371483	0.2673446
784	bornaddress	\N	\N	Verona	IT	812	45.4384958	10.9924122
789	bornaddress	\N	\N	Taktser	CN	819	36.3781555	101.8652258
408	bornaddress	\N	\N	Wilkes-Barre PA	US	348	41.2464824	-75.8817316
745	diedaddress	\N	\N	Athens	GR	761	37.9755648	23.7348324
261	organization	\N	\N	Strasbourg	FR	\N	48.584614	7.7507127
391	bornaddress	\N	\N	Geldrop	NL	331	51.4226684	5.5607546
843	bornaddress	\N	\N	Den Helder	NL	874	52.957976	4.760279
367	bornaddress	\N	\N	Toronto	CA	307	43.6534817	-79.3839347
669	diedaddress	\N	\N	Charlottesville VA	US	660	38.029306	-78.4766781
599	bornaddress	\N	\N	Helsa	DE	562	51.2447892	9.6727072
390	bornaddress	\N	\N	Tel Aviv	IL	329	32.0852997	34.7818064
\.


--
-- Data for Name: nobelwinner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.nobelwinner (id, firstname, surname, born, died, gender, year, category, overallmotivation, motivation, org_id) FROM stdin;
1	Makoto	Kobayashi	1944-04-07	\N	male	2008	Physics	\N	\N	1
2	Brian	Kobilka	1955-05-30	\N	male	2012	Chemistry	\N	\N	2
3	Stefan W.	Hell	1962-12-23	\N	male	2014	Chemistry	\N	\N	3
4	Intergovernmental Panel on Climate Change	\N	\N	\N	org	2007	Peace	\N	\N	\N
5	Ivan	Pavlov	1849-09-14	1936-02-27	male	1904	Medicine	\N	\N	4
6	Archibald V.	Hill	1886-09-26	1977-06-03	male	1922	Medicine	\N	\N	5
7	George H.	Whipple	1878-08-28	1976-02-01	male	1934	Medicine	\N	\N	6
8	Sir John	Eccles	1903-01-27	1997-05-02	male	1963	Medicine	\N	\N	7
9	International Committee of the Red Cross	\N	\N	\N	org	1963	Peace	\N	\N	\N
10	Charles G.	Dawes	1865-08-27	1951-04-23	male	1925	Peace	\N	\N	\N
11	Henry	Kissinger	1923-05-27	\N	male	1973	Peace	\N	\N	\N
12	Selma	Lagerlöf	1858-11-20	1940-03-16	female	1909	Literature	\N	\N	\N
13	Frans Eemil	Sillanpää	1888-09-16	1964-06-03	male	1939	Literature	\N	\N	\N
14	Claude	Simon	1913-10-10	2005-07-06	male	1985	Literature	\N	\N	\N
15	James	Tobin	1918-03-05	2002-03-11	male	1981	Economics	\N	\N	8
16	Sir James W.	Black	1924-06-14	2010-03-21	male	1988	Medicine	\N	\N	9
17	Juan Manuel	Santos	1951-08-10	\N	male	2016	Peace	\N	\N	\N
18	Richard H.	Thaler	1945-09-12	\N	male	2017	Economics	\N	\N	10
19	William	Kaelin	1957-11-23	\N	male	2019	Medicine	\N	\N	11
20	Esther	Duflo	1972-10-25	\N	female	2019	Economics	\N	\N	12
21	Center for Civil Liberties	\N	\N	\N	org	2022	Peace	\N	\N	\N
22	Pierre	Curie	1859-05-15	1906-04-19	male	1903	Physics	\N	\N	13
23	Manne	Siegbahn	1886-12-03	1978-09-26	male	1924	Physics	\N	\N	14
24	Gustav	Hertz	1887-07-22	1975-10-30	male	1925	Physics	\N	\N	15
25	Leon N.	Cooper	1930-02-28	\N	male	1972	Physics	\N	\N	16
26	J. Georg	Bednorz	1950-05-16	\N	male	1987	Physics	\N	\N	17
27	Victor	Grignard	1871-05-06	1935-12-13	male	1912	Chemistry	\N	\N	18
28	George	de Hevesy	1885-08-01	1966-07-05	male	1943	Chemistry	\N	\N	19
29	Sir Cyril	Hinshelwood	1897-05-19	1967-10-09	male	1956	Chemistry	\N	\N	20
30	Max F.	Perutz	1914-05-19	2002-02-06	male	1962	Chemistry	\N	\N	21
31	Paul C.	Lauterbur	1929-05-06	2007-03-27	male	2003	Medicine	\N	\N	22
32	Carl	von Ossietzky	1889-10-03	1938-05-04	male	1935	Peace	\N	\N	\N
33	René	Cassin	1887-10-05	1976-02-20	male	1968	Peace	\N	\N	\N
34	F.W.	de Klerk	1936-03-18	2021-11-11	male	1993	Peace	\N	\N	\N
35	John	Steinbeck	1902-02-27	1968-12-20	male	1962	Literature	\N	\N	\N
36	Gabriel	García Márquez	1927-03-06	2014-04-17	male	1982	Literature	\N	\N	\N
37	Simon	Kuznets	1901-04-30	1985-07-08	male	1971	Economics	\N	\N	23
38	James M.	Buchanan Jr.	1919-10-03	2013-01-09	male	1986	Economics	\N	\N	24
39	Herbert	Kroemer	1928-08-25	\N	male	2000	Physics	\N	\N	25
40	Tim	Hunt	1943-02-19	\N	male	2001	Medicine	\N	\N	26
41	Leon M.	Lederman	1922-07-15	2018-10-03	male	1988	Physics	\N	\N	27
42	Paul	Sabatier	1854-11-05	1941-08-14	male	1912	Chemistry	\N	\N	28
43	Walther	Nernst	1864-06-25	1941-11-18	male	1920	Chemistry	\N	\N	29
44	Arne	Tiselius	1902-08-10	1971-10-29	male	1948	Chemistry	\N	\N	14
45	George D.	Snell	1903-12-19	1996-06-06	male	1980	Medicine	\N	\N	30
46	Jaroslav	Heyrovsky	1890-12-20	1967-03-27	male	1959	Chemistry	\N	\N	31
47	Paul	Ehrlich	1854-03-14	1915-08-20	male	1908	Medicine	\N	\N	32
48	August	Krogh	1874-11-15	1949-09-13	male	1920	Medicine	\N	\N	33
49	Willem	Einthoven	1860-05-21	1927-09-29	male	1924	Medicine	\N	\N	34
50	Robert F.	Furchgott	1916-06-04	2009-05-19	male	1998	Medicine	\N	\N	35
51	Aziz	Sancar	1946-09-08	\N	male	2015	Chemistry	\N	\N	36
52	Abiy	Ahmed Ali	1976-08-15	\N	male	2019	Peace	\N	\N	\N
53	Abdulrazak	Gurnah	\N	\N	male	2021	Literature	\N	\N	\N
54	John	Clauser	1942-12-01	\N	male	2022	Physics	\N	\N	37
55	Patrick M.S.	Blackett	1897-11-18	1974-07-13	male	1948	Physics	\N	\N	38
56	John	Bardeen	1908-05-23	1991-01-30	male	1972	Physics	\N	\N	22
57	Walter H.	Brattain	1902-02-10	1987-10-13	male	1956	Physics	\N	\N	39
58	Aage N.	Bohr	1922-06-19	2009-09-08	male	1975	Physics	\N	\N	40
59	Yoichiro	Nambu	1921-01-18	2015-07-05	male	2008	Physics	\N	\N	41
60	Dale T.	Mortensen	1939-02-02	2014-01-09	male	2010	Economics	\N	\N	42
61	Organisation for the Prohibition of Chemical Weapons	\N	\N	\N	org	2013	Peace	\N	\N	\N
62	Arthur B.	McDonald	1943-08-29	\N	male	2015	Physics	\N	\N	43
63	Theodor	Kocher	1841-08-25	1917-07-27	male	1909	Medicine	\N	\N	44
64	Otto	Meyerhof	1884-04-12	1951-10-06	male	1922	Medicine	\N	\N	45
65	Sir Alexander	Fleming	1881-08-06	1955-03-11	male	1945	Medicine	\N	\N	5
66	Sir Howard	Florey	1898-09-24	1968-02-21	male	1945	Medicine	\N	\N	20
67	Bernardo	Houssay	1887-04-10	1971-09-21	male	1947	Medicine	\N	\N	46
68	Philip S.	Hench	1896-02-28	1965-03-30	male	1950	Medicine	\N	\N	47
69	André F.	Cournand	1895-09-24	1988-02-19	male	1956	Medicine	\N	\N	48
70	James	Watson	1928-04-06	\N	male	1962	Medicine	\N	\N	23
71	François	Jacob	1920-06-17	2013-04-19	male	1965	Medicine	\N	\N	49
72	David M.	Lee	1931-01-20	\N	male	1996	Physics	\N	\N	50
73	Frederick	Soddy	1877-09-02	1956-09-22	male	1921	Chemistry	\N	\N	20
74	Richard	Kuhn	1900-12-03	1967-07-31	male	1938	Chemistry	\N	\N	51
75	John	Bardeen	1908-05-23	1991-01-30	male	1956	Physics	\N	\N	22
76	Steven	Weinberg	1933-05-03	2021-07-23	male	1979	Physics	\N	\N	23
229	François	Englert	1932-11-06	\N	male	2013	Physics	\N	\N	113
77	Gerhard	Herzberg	1904-12-25	1999-03-03	male	1971	Chemistry	\N	\N	52
78	Christian	Anfinsen	1916-03-26	1995-05-14	male	1972	Chemistry	\N	\N	53
79	Stanford	Moore	1913-09-04	1982-08-23	male	1972	Chemistry	\N	\N	54
80	Henry	Taube	1915-11-30	2005-11-16	male	1983	Chemistry	\N	\N	55
81	Allan M.	Cormack	1924-02-23	1998-05-07	male	1979	Medicine	\N	\N	56
82	Edwin G.	Krebs	1918-06-06	2009-12-21	male	1992	Medicine	\N	\N	57
83	Phillip A.	Sharp	1944-06-06	\N	male	1993	Medicine	\N	\N	58
84	Christian	Lange	1869-09-17	1938-12-11	male	1921	Peace	\N	\N	\N
85	Aristide	Briand	1862-03-28	1932-03-07	male	1926	Peace	\N	\N	\N
86	Andrei	Sakharov	1921-05-21	1989-12-14	male	1975	Peace	\N	\N	\N
87	Desmond	Tutu	1931-10-07	2021-12-26	male	1984	Peace	\N	\N	\N
88	John F.	Nash Jr.	1928-06-13	2015-05-23	male	1994	Economics	\N	\N	59
89	Xiaobo	Liu	1955-12-28	2017-07-13	male	2010	Peace	\N	\N	\N
90	Tomas	Lindahl	1938-01-28	\N	male	2015	Chemistry	\N	\N	60
91	National Dialogue Quartet	\N	\N	\N	org	2015	Peace	\N	\N	\N
92	F. Duncan M.	Haldane	1951-09-14	\N	male	2016	Physics	\N	\N	59
93	International Campaign to Abolish Nuclear Weapons	\N	\N	\N	org	2017	Peace	\N	\N	\N
94	Ales	Bialiatski	1962-09-25	\N	male	2022	Peace	\N	\N	\N
95	Andrew Z.	Fire	1959-04-27	\N	male	2006	Medicine	\N	\N	2
96	Craig C.	Mello	1960-10-18	\N	male	2006	Medicine	\N	\N	61
97	Eric S.	Maskin	1950-12-12	\N	male	2007	Economics	\N	\N	62
98	Werner	Heisenberg	1901-12-05	1976-02-01	male	1932	Physics	\N	\N	63
99	Isidor Isaac	Rabi	1898-07-29	1988-01-11	male	1944	Physics	\N	\N	64
100	Simon	van der Meer	1925-11-24	2011-03-04	male	1984	Physics	\N	\N	65
101	Daniel C.	Tsui	1939-02-28	\N	male	1998	Physics	\N	\N	59
102	Otto	Diels	1876-01-23	1954-03-07	male	1950	Chemistry	\N	\N	45
103	Riccardo	Giacconi	1931-10-06	2018-12-16	male	2002	Physics	\N	\N	66
104	John B.	Fenn	1917-06-15	2010-12-10	male	2002	Chemistry	\N	\N	67
105	Alexei	Abrikosov	1928-06-25	2017-03-29	male	2003	Physics	\N	\N	68
106	Roy J.	Glauber	1925-09-01	2018-12-26	male	2005	Physics	\N	\N	23
107	Yves	Chauvin	1930-10-10	2015-01-27	male	2005	Chemistry	\N	\N	69
108	Robert J.	Aumann	1930-06-08	\N	male	2005	Economics	\N	\N	70
109	Robert B.	Woodward	1917-04-10	1979-07-08	male	1965	Chemistry	\N	\N	23
110	George	Porter	1920-12-06	2002-08-31	male	1967	Chemistry	\N	\N	71
111	Hans	Krebs	1900-08-25	1981-11-22	male	1953	Medicine	\N	\N	72
112	Frederick C.	Robbins	1916-08-25	2003-08-04	male	1954	Medicine	\N	\N	73
113	Maurice	Wilkins	1916-12-15	2004-10-05	male	1962	Medicine	\N	\N	5
114	Alan	Hodgkin	1914-02-05	1998-12-20	male	1963	Medicine	\N	\N	74
115	Jeffrey C.	Hall	1945-05-03	\N	male	2017	Medicine	\N	\N	75
116	James	Peebles	1935-04-25	\N	male	2019	Physics	\N	\N	59
117	Rodney R.	Porter	1917-10-08	1985-09-06	male	1972	Medicine	\N	\N	20
118	Werner	Arber	1929-06-03	\N	male	1978	Medicine	\N	\N	76
119	Eric	Betzig	1960-01-13	\N	male	2014	Chemistry	\N	\N	77
120	Dag	Hammarskjöld	1905-07-29	1961-09-18	male	1961	Peace	\N	\N	\N
121	Mairead	Corrigan	1944-01-27	\N	female	1976	Peace	\N	\N	\N
122	Doctors Without Borders	\N	\N	\N	org	1999	Peace	\N	\N	\N
123	Jacinto	Benavente	1866-08-12	1954-07-14	male	1922	Literature	\N	\N	\N
124	Winston	Churchill	1874-11-30	1965-01-24	male	1953	Literature	\N	\N	\N
125	Jean-Paul	Sartre	1905-06-21	1980-04-15	male	1964	Literature	\N	\N	\N
126	Günter	Grass	1927-10-16	2015-04-13	male	1999	Literature	\N	\N	\N
127	Paul A.	Samuelson	1915-05-15	2009-12-13	male	1970	Economics	\N	\N	12
128	Robert E.	Lucas Jr.	1937-09-15	2023-05-15	male	1995	Economics	\N	\N	10
129	Thomas A.	Steitz	1940-08-23	2018-08-23	male	2009	Chemistry	\N	\N	8
130	James E.	Rothman	1950-11-03	\N	male	2013	Medicine	\N	\N	8
131	Carlo	Rubbia	1934-03-31	\N	male	1984	Physics	\N	\N	65
132	Bertram N.	Brockhouse	1918-07-15	2003-10-13	male	1994	Physics	\N	\N	78
133	Alfred	Werner	1866-12-12	1919-11-15	male	1913	Chemistry	\N	\N	79
134	Richard	Willstätter	1872-08-13	1942-08-03	male	1915	Chemistry	\N	\N	80
135	Frédéric	Joliot	1900-03-19	1958-08-14	male	1935	Chemistry	\N	\N	81
136	Leopold	Ruzicka	1887-09-13	1976-09-26	male	1939	Chemistry	\N	\N	82
137	Linus	Pauling	1901-02-28	1994-08-19	male	1954	Chemistry	\N	\N	83
138	Derek	Barton	1918-09-08	1998-03-16	male	1969	Chemistry	\N	\N	84
139	Donald J.	Cram	1919-04-22	2001-06-17	male	1987	Chemistry	\N	\N	25
140	Elias James	Corey	1928-07-12	\N	male	1990	Chemistry	\N	\N	23
141	Hendrik A.	Lorentz	1853-07-18	1928-02-04	male	1902	Physics	\N	\N	34
142	Lord	Rayleigh	1842-11-12	1919-06-30	male	1904	Physics	\N	\N	71
143	Guglielmo	Marconi	1874-04-25	1937-07-20	male	1909	Physics	\N	\N	85
144	Gustaf	Dalén	1869-11-30	1937-12-09	male	1912	Physics	\N	\N	86
145	James	Chadwick	1891-10-20	1974-07-24	male	1935	Physics	\N	\N	87
146	Enrico	Fermi	1901-09-29	1954-11-28	male	1938	Physics	\N	\N	88
147	E. M.	Purcell	1912-08-30	1997-03-07	male	1952	Physics	\N	\N	23
148	Charles H.	Townes	1915-07-28	2015-01-27	male	1964	Physics	\N	\N	12
149	Masatoshi	Koshiba	1926-09-19	2020-11-12	male	2002	Physics	\N	\N	89
150	Kurt	Wüthrich	1938-10-04	\N	male	2002	Chemistry	\N	\N	82
151	Vernon L.	Smith	1927-01-01	\N	male	2002	Economics	\N	\N	90
152	Jacques	Dubochet	1942-06-08	\N	male	2017	Chemistry	\N	\N	91
153	William D.	Nordhaus	1941-05-31	\N	male	2018	Economics	\N	\N	8
154	Olga	Tokarczuk	1962-01-29	\N	female	2018	Literature	\N	\N	\N
155	Bruce A.	Beutler	1957-12-29	\N	male	2011	Medicine	\N	\N	92
156	Randy W.	Schekman	1948-12-30	\N	male	2013	Medicine	\N	\N	25
157	Michael	Levitt	1947-05-09	\N	male	2013	Chemistry	\N	\N	2
158	Henry	Dunant	1828-05-08	1910-10-30	male	1901	Peace	\N	\N	\N
159	Permanent International Peace Bureau	\N	\N	\N	org	1910	Peace	\N	\N	\N
160	International Committee of the Red Cross	\N	\N	\N	org	1944	Peace	\N	\N	\N
161	Ludwig	Quidde	1858-03-23	1941-03-04	male	1927	Peace	\N	\N	\N
162	Léon	Jouhaux	1879-07-01	1954-04-28	male	1951	Peace	\N	\N	\N
163	Giosuè	Carducci	1835-07-27	1907-02-16	male	1906	Literature	\N	\N	\N
164	Gabriela	Mistral	1889-04-07	1957-01-10	female	1945	Literature	\N	\N	\N
165	Shmuel	Agnon	1888-07-17	1970-02-17	male	1966	Literature	\N	\N	\N
166	Czeslaw	Milosz	1911-06-30	2004-08-14	male	1980	Literature	\N	\N	\N
167	Gerard	Debreu	1921-07-04	2004-12-31	male	1983	Economics	\N	\N	25
168	Robert	Mundell	1932-10-24	2021-04-04	male	1999	Economics	\N	\N	64
169	Arvid	Carlsson	1923-01-25	2018-06-29	male	2000	Medicine	\N	\N	93
170	Santiago	Ramón y Cajal	1852-05-01	1934-10-17	male	1906	Medicine	\N	\N	94
171	Christiaan	Eijkman	1858-08-11	1930-11-05	male	1929	Medicine	\N	\N	95
172	Albert	Szent-Györgyi	1893-09-16	1986-10-22	male	1937	Medicine	\N	\N	96
173	Francis	Crick	1916-06-08	2004-07-28	male	1962	Medicine	\N	\N	21
174	Konrad	Bloch	1912-01-21	2000-10-15	male	1964	Medicine	\N	\N	23
175	Jacques	Monod	1910-02-09	1976-05-31	male	1965	Medicine	\N	\N	49
176	Theodore	Roosevelt	1858-10-27	1919-01-06	male	1906	Peace	\N	\N	\N
177	Carlos	Saavedra Lamas	1878-11-01	1959-05-05	male	1936	Peace	\N	\N	\N
178	Emily Greene	Balch	1867-01-08	1961-01-09	female	1946	Peace	\N	\N	\N
179	Office of the United Nations High Commissioner for Refugees	\N	1950-12-14	\N	org	1954	Peace	\N	\N	\N
180	Georges	Pire	1910-02-10	1969-01-30	male	1958	Peace	\N	\N	\N
181	Jody	Williams	1950-10-09	\N	female	1997	Peace	\N	\N	\N
182	Sigrid	Undset	1882-05-20	1949-06-10	female	1928	Literature	\N	\N	\N
183	William	Faulkner	1897-09-25	1962-07-06	male	1949	Literature	\N	\N	\N
184	Theodore W.	Schultz	1902-04-30	1998-02-26	male	1979	Economics	\N	\N	10
185	Merton H.	Miller	1923-05-16	2000-06-03	male	1990	Economics	\N	\N	10
186	Robert C.	Merton	1944-07-31	\N	male	1997	Economics	\N	\N	23
187	Lord	Todd	1907-10-02	1997-01-10	male	1957	Chemistry	\N	\N	74
188	John	Cornforth	1917-09-07	2013-12-08	male	1975	Chemistry	\N	\N	97
189	Herbert C.	Brown	1912-05-22	2004-12-19	male	1979	Chemistry	\N	\N	98
190	Paul	Berg	1926-06-30	2023-02-15	male	1980	Chemistry	\N	\N	55
191	Johann	Deisenhofer	1943-09-30	\N	male	1988	Chemistry	\N	\N	92
192	Leymah	Gbowee	1972-02-01	\N	female	2011	Peace	\N	\N	\N
193	Martin	Karplus	1930-03-15	\N	male	2013	Chemistry	\N	\N	99
194	Sune K.	Bergström	1916-01-10	2004-08-15	male	1982	Medicine	\N	\N	100
195	Bengt	Holmström	1949-04-18	\N	male	2016	Economics	\N	\N	12
196	Julius	Wagner-Jauregg	1857-03-07	1940-09-27	male	1927	Medicine	\N	\N	101
197	Karl	Landsteiner	1868-06-14	1943-06-26	male	1930	Medicine	\N	\N	102
198	Gerhard	Domagk	1895-10-30	1964-04-24	male	1939	Medicine	\N	\N	103
199	André	Lwoff	1902-05-08	1994-09-30	male	1965	Medicine	\N	\N	49
200	George	Wald	1906-11-18	1997-04-12	male	1967	Medicine	\N	\N	23
201	D. Carleton	Gajdusek	1923-09-09	2008-12-12	male	1976	Medicine	\N	\N	53
202	Albert	Einstein	1879-03-14	1955-04-18	male	1921	Physics	\N	\N	104
203	Louis	de Broglie	1892-08-15	1987-03-19	male	1929	Physics	\N	\N	105
204	Carl D.	Anderson	1905-09-03	1991-01-11	male	1936	Physics	\N	\N	83
205	Polykarp	Kusch	1911-01-26	1993-03-20	male	1955	Physics	\N	\N	64
206	Melvin	Schwartz	1932-11-02	2006-08-28	male	1988	Physics	\N	\N	106
207	Jerome I.	Friedman	1930-03-28	\N	male	1990	Physics	\N	\N	12
208	Horst L.	Störmer	1949-04-06	\N	male	1998	Physics	\N	\N	64
209	Francis W.	Aston	1877-09-01	1945-11-20	male	1922	Chemistry	\N	\N	74
210	Nicholas Murray	Butler	1862-04-02	1947-12-07	male	1931	Peace	\N	\N	64
211	Willy	Brandt	1913-12-18	1992-10-08	male	1971	Peace	\N	\N	\N
212	Le Duc Tho	\N	1911-10-14	1990-10-13	male	1973	Peace	\N	\N	\N
213	International Campaign to Ban Landmines	\N	\N	\N	org	1997	Peace	\N	\N	\N
214	José	Echegaray	1832-04-19	1916-09-04	male	1904	Literature	\N	\N	\N
215	Wladyslaw	Reymont	1867-05-07	1925-12-05	male	1924	Literature	\N	\N	\N
216	Harry	Martinson	1904-05-06	1978-02-11	male	1974	Literature	\N	\N	\N
217	Jaroslav	Seifert	1901-09-23	1986-01-10	male	1984	Literature	\N	\N	\N
218	John C.	Harsanyi	1920-05-29	2000-08-09	male	1994	Economics	\N	\N	25
219	Myron	Scholes	1941-07-01	\N	male	1997	Economics	\N	\N	107
220	Gertrude B.	Elion	1918-01-23	1999-02-21	female	1988	Medicine	\N	\N	108
221	Joseph E.	Murray	1919-04-01	2012-11-26	male	1990	Medicine	\N	\N	109
222	Peter C.	Doherty	1940-10-15	\N	male	1996	Medicine	\N	\N	110
223	Max	Delbrück	1906-09-04	1981-03-09	male	1969	Medicine	\N	\N	83
224	Alfred D.	Hershey	1908-12-04	1997-05-22	male	1969	Medicine	\N	\N	111
225	Kip S.	Thorne	1940-06-01	\N	male	2017	Physics	\N	\N	\N
226	Douglas	Diamond	1953-10-25	\N	male	2022	Economics	\N	\N	10
227	Willard S.	Boyle	1924-08-19	2011-05-07	male	2009	Physics	\N	\N	112
228	Ellen	Johnson Sirleaf	1938-10-29	\N	female	2011	Peace	\N	\N	\N
230	Robert J.	Shiller	1946-03-29	\N	male	2013	Economics	\N	\N	8
231	George A.	Akerlof	1940-06-17	\N	male	2001	Economics	\N	\N	25
232	Aaron	Ciechanover	1947-10-01	\N	male	2004	Chemistry	\N	\N	114
233	Harold	Pinter	1930-10-10	2008-12-24	male	2005	Literature	\N	\N	\N
234	Peyton	Rous	1879-10-05	1970-02-16	male	1966	Medicine	\N	\N	54
235	Robert W.	Holley	1922-01-28	1993-02-11	male	1968	Medicine	\N	\N	50
236	Vincent	du Vigneaud	1901-05-18	1978-12-11	male	1955	Chemistry	\N	\N	50
237	Charles J.	Pedersen	1904-10-03	1989-10-26	male	1987	Chemistry	\N	\N	115
238	Richard R.	Ernst	1933-08-14	2021-06-04	male	1991	Chemistry	\N	\N	82
239	Jens C.	Skou	1918-10-08	2018-05-28	male	1997	Chemistry	\N	\N	116
240	Igor Y.	Tamm	1895-07-08	1971-04-12	male	1958	Physics	\N	\N	117
241	Hans G.	Dehmelt	1922-09-09	2017-03-07	male	1989	Physics	\N	\N	57
242	Henri	Becquerel	1852-12-15	1908-08-25	male	1903	Physics	\N	\N	118
243	Wilhelm	Wien	1864-01-13	1928-08-30	male	1911	Physics	\N	\N	119
244	Max	Born	1882-12-11	1970-01-05	male	1954	Physics	\N	\N	120
245	Eugene	Wigner	1902-11-17	1995-01-01	male	1963	Physics	\N	\N	59
246	César	Milstein	1927-10-08	2002-03-24	male	1984	Medicine	\N	\N	21
247	Edgar	Adrian	1889-11-30	1977-08-08	male	1932	Medicine	\N	\N	74
248	Jean-Marie Gustave	Le Clézio	1940-04-13	\N	male	2008	Literature	\N	\N	\N
249	Ada E.	Yonath	1939-06-22	\N	female	2009	Chemistry	\N	\N	121
250	Mario	Vargas Llosa	1936-03-28	\N	male	2010	Literature	\N	\N	\N
251	Hiroshi	Amano	1960-09-11	\N	male	2014	Physics	\N	\N	122
252	Patrick	Modiano	1945-07-30	\N	male	2014	Literature	\N	\N	\N
253	Youyou	Tu	1930-12-30	\N	female	2015	Medicine	\N	\N	123
254	Barry	Sharpless	1941-04-28	\N	male	2001	Chemistry	\N	\N	124
255	Vitaly L.	Ginzburg	1916-10-04	2009-11-08	male	2003	Physics	\N	\N	125
256	Grameen Bank	\N	\N	\N	org	2006	Peace	\N	\N	\N
257	Sir Nevill F.	Mott	1905-09-30	1996-08-08	male	1977	Physics	\N	\N	74
258	Pierre-Gilles	de Gennes	1932-10-24	2007-05-18	male	1991	Physics	\N	\N	126
259	Wendell M.	Stanley	1904-08-16	1971-06-15	male	1946	Chemistry	\N	\N	102
260	Archer J.P.	Martin	1910-03-01	2002-07-28	male	1952	Chemistry	\N	\N	127
261	Mario J.	Molina	1943-03-19	2020-10-07	male	1995	Chemistry	\N	\N	12
262	Sir Harold	Kroto	1939-10-07	2016-04-30	male	1996	Chemistry	\N	\N	97
263	James P.	Allison	1948-08-07	\N	male	2018	Medicine	\N	\N	128
264	Frances H.	Arnold	1956-07-25	\N	female	2018	Chemistry	\N	\N	83
265	Sir Gregory P.	Winter	1951-04-14	\N	male	2018	Chemistry	\N	\N	21
266	Alfred	Fried	1864-11-11	1921-05-04	male	1911	Peace	\N	\N	\N
267	Fridtjof	Nansen	1861-10-10	1930-05-13	male	1922	Peace	\N	\N	\N
268	Albert	Lutuli	\N	1967-07-21	male	1960	Peace	\N	\N	\N
269	Oscar	Arias Sánchez	1940-09-13	\N	male	1987	Peace	\N	\N	\N
270	Paul	Heyse	1830-03-15	1914-04-02	male	1910	Literature	\N	\N	\N
271	Rabindranath	Tagore	1861-05-07	1941-08-07	male	1913	Literature	\N	\N	\N
272	Henrik	Pontoppidan	1857-07-24	1943-08-21	male	1917	Literature	\N	\N	\N
273	Knut	Hamsun	1859-08-04	1952-02-19	male	1920	Literature	\N	\N	\N
274	Elias	Canetti	1905-07-25	1994-08-14	male	1981	Literature	\N	\N	\N
275	Naguib	Mahfouz	1911-12-11	2006-08-30	male	1988	Literature	\N	\N	\N
276	Milton	Friedman	1912-07-31	2006-11-16	male	1976	Economics	\N	\N	10
277	Wolfgang	Ketterle	1957-10-21	\N	male	2001	Physics	\N	\N	12
278	Joseph E.	Stiglitz	1943-02-09	\N	male	2001	Economics	\N	\N	64
279	United Nations	\N	\N	\N	org	2001	Peace	\N	\N	\N
280	Wangari	Maathai	1940-04-01	2011-09-25	female	2004	Peace	\N	\N	\N
281	Philipp	Lenard	1862-06-07	1947-05-20	male	1905	Physics	\N	\N	45
282	James	Franck	1882-08-26	1964-05-21	male	1925	Physics	\N	\N	32
283	Frits	Zernike	1888-07-16	1966-03-10	male	1953	Physics	\N	\N	129
284	Donald A.	Glaser	1926-09-21	2013-02-28	male	1960	Physics	\N	\N	25
285	Arthur L.	Schawlow	1921-05-05	1999-04-28	male	1981	Physics	\N	\N	55
286	Jacobus H.	van 't Hoff	1852-08-30	1911-03-01	male	1901	Chemistry	\N	\N	29
287	Fritz	Haber	1868-12-09	1934-01-29	male	1918	Chemistry	\N	\N	130
288	Sir Robert	Robinson	1886-09-13	1975-02-08	male	1947	Chemistry	\N	\N	20
289	Sir Charles	Sherrington	1857-11-27	1952-03-04	male	1932	Medicine	\N	\N	20
290	Giulio	Natta	1903-02-26	1979-05-02	male	1963	Chemistry	\N	\N	131
291	Walter	Gilbert	1932-03-21	\N	male	1980	Chemistry	\N	\N	132
292	Niels K.	Jerne	1911-12-23	1994-10-07	male	1984	Medicine	\N	\N	133
293	Georges J.F.	Köhler	1946-04-17	1995-03-01	male	1984	Medicine	\N	\N	133
294	Michael S.	Brown	1941-04-13	\N	male	1985	Medicine	\N	\N	92
295	Susumu	Tonegawa	1939-09-05	\N	male	1987	Medicine	\N	\N	12
296	Venkatraman	Ramakrishnan	\N	\N	male	2009	Chemistry	\N	\N	21
297	Jules A.	Hoffmann	1941-08-02	\N	male	2011	Medicine	\N	\N	134
298	Peter	Higgs	1929-05-29	\N	male	2013	Physics	\N	\N	135
299	Satoshi	Ōmura	1935-07-12	\N	male	2015	Medicine	\N	\N	136
300	Élie	Ducommun	1833-02-19	1906-12-07	male	1902	Peace	\N	\N	\N
301	Albert	Gobat	1843-05-21	1914-03-16	male	1902	Peace	\N	\N	\N
302	Louis	Renault	1843-05-21	1918-02-08	male	1907	Peace	\N	\N	137
303	Auguste	Beernaert	1829-07-26	1912-10-06	male	1909	Peace	\N	\N	\N
304	Léon	Bourgeois	1851-05-21	1925-09-29	male	1920	Peace	\N	\N	\N
305	Hjalmar	Branting	1860-11-23	1925-02-24	male	1921	Peace	\N	\N	\N
306	John R.	Mott	1865-05-25	1955-01-31	male	1946	Peace	\N	\N	\N
307	Lester Bowles	Pearson	1897-04-23	1972-12-27	male	1957	Peace	\N	\N	\N
308	Wole	Soyinka	1934-07-13	\N	male	1986	Literature	\N	\N	\N
309	Sir Arthur	Lewis	1915-01-23	1991-06-15	male	1979	Economics	\N	\N	59
310	Gary	Becker	1930-12-02	2014-05-03	male	1992	Economics	\N	\N	10
311	George P.	Smith	1941-03-10	\N	male	2018	Chemistry	\N	\N	138
312	M. Stanley	Whittingham	1941-12-22	\N	male	2019	Chemistry	\N	\N	139
313	Robert	Wilson	1937-05-16	\N	male	2020	Economics	\N	\N	55
314	Giorgio	Parisi	1948-08-04	\N	male	2021	Physics	\N	\N	140
315	Benjamin	List	1968-01-11	\N	male	2021	Chemistry	\N	\N	141
316	David	MacMillan	1968-03-16	\N	male	2021	Chemistry	\N	\N	59
317	Svante	Arrhenius	1859-02-19	1927-10-02	male	1903	Chemistry	\N	\N	19
318	Theodore W.	Richards	1868-01-31	1928-04-02	male	1914	Chemistry	\N	\N	23
319	Hans	Fischer	1881-07-27	1945-03-31	male	1930	Chemistry	\N	\N	142
320	Carl	Bosch	1874-08-27	1940-04-26	male	1931	Chemistry	\N	\N	143
321	Harold C.	Urey	1893-04-29	1981-01-05	male	1934	Chemistry	\N	\N	64
322	John C.	Kendrew	1917-03-24	1997-08-23	male	1962	Chemistry	\N	\N	21
323	Kary B.	Mullis	1944-12-28	2019-08-07	male	1993	Chemistry	\N	\N	\N
324	Godfrey N.	Hounsfield	1919-08-28	2004-08-12	male	1979	Medicine	\N	\N	144
325	Richard J.	Roberts	1943-09-06	\N	male	1993	Medicine	\N	\N	145
326	Françoise	Barré-Sinoussi	1947-07-30	\N	female	2008	Medicine	\N	\N	146
327	Martti	Ahtisaari	1937-06-23	\N	male	2008	Peace	\N	\N	\N
328	Andre	Geim	1958-10-21	\N	male	2010	Physics	\N	\N	147
329	Dan	Shechtman	1941-01-24	\N	male	2011	Chemistry	\N	\N	114
330	Lars Peter	Hansen	1952-10-26	\N	male	2013	Economics	\N	\N	10
331	Guido	Imbens	1963-09-03	\N	male	2021	Economics	\N	\N	55
332	Sir Norman	Angell	1872-12-26	1967-10-07	male	1933	Peace	\N	\N	\N
333	Philip	Noel-Baker	1889-11-01	1982-10-08	male	1959	Peace	\N	\N	\N
334	Thomas	Mann	1875-06-06	1955-08-12	male	1929	Literature	\N	\N	\N
335	Octavio	Paz	1914-03-31	1998-04-19	male	1990	Literature	\N	\N	\N
336	Toni	Morrison	1931-02-18	2019-08-05	female	1993	Literature	\N	\N	\N
337	Robert W.	Fogel	1927-07-01	2013-06-11	male	1993	Economics	\N	\N	10
338	Charles	Nicolle	1866-09-21	1936-02-28	male	1928	Medicine	\N	\N	49
339	Edward A.	Doisy	1893-11-13	1986-10-23	male	1943	Medicine	\N	\N	148
340	Herbert S.	Gasser	1888-07-05	1963-05-11	male	1944	Medicine	\N	\N	102
341	Barry	Sharpless	1941-04-28	\N	male	2022	Chemistry	\N	\N	149
342	Shirin	Ebadi	1947-06-21	\N	female	2003	Peace	\N	\N	\N
343	Robert H.	Grubbs	1942-02-27	2021-12-19	male	2005	Chemistry	\N	\N	83
344	Mohamed	ElBaradei	1942-06-17	\N	male	2005	Peace	\N	\N	\N
345	Thomas C.	Schelling	1921-04-14	2016-12-13	male	2005	Economics	\N	\N	150
346	Muhammad	Yunus	1940-06-28	\N	male	2006	Peace	\N	\N	\N
347	Rita	Levi-Montalcini	1909-04-22	2012-12-30	female	1986	Medicine	\N	\N	151
348	Edward B.	Lewis	1918-05-20	2004-07-21	male	1995	Medicine	\N	\N	83
349	Christopher A.	Sims	1942-10-21	\N	male	2011	Economics	\N	\N	59
350	Takaaki	Kajita	1959-03-09	\N	male	2015	Physics	\N	\N	89
351	Max	Planck	1858-04-23	1947-10-04	male	1918	Physics	\N	\N	29
352	Johannes	Stark	1874-04-15	1957-06-21	male	1919	Physics	\N	\N	152
353	Lev	Landau	1908-01-22	1968-04-01	male	1962	Physics	\N	\N	153
354	Robert Woodrow	Wilson	1936-01-10	\N	male	1978	Physics	\N	\N	112
355	Ernest	Rutherford	1871-08-30	1937-10-19	male	1908	Chemistry	\N	\N	38
356	Adolf	Windaus	1876-12-25	1959-06-09	male	1928	Chemistry	\N	\N	32
357	Irène	Joliot-Curie	1897-09-12	1956-03-17	female	1935	Chemistry	\N	\N	81
358	John	Macleod	1876-09-06	1935-03-16	male	1923	Medicine	\N	\N	154
359	H. Gobind	Khorana	1922-01-09	2011-11-09	male	1968	Medicine	\N	\N	155
360	Linus	Pauling	1901-02-28	1994-08-19	male	1962	Peace	\N	\N	83
361	Geoffrey	Wilkinson	1921-07-14	1996-09-26	male	1973	Chemistry	\N	\N	84
362	Dudley R.	Herschbach	1932-06-18	\N	male	1986	Chemistry	\N	\N	23
363	F. Sherwood	Rowland	1927-06-28	2012-03-10	male	1995	Chemistry	\N	\N	25
364	Richard E.	Smalley	1943-06-06	2005-10-28	male	1996	Chemistry	\N	\N	156
365	Louis J.	Ignarro	1941-05-31	\N	male	1998	Medicine	\N	\N	157
366	Carl	Wieman	1951-03-26	\N	male	2001	Physics	\N	\N	158
367	Svetlana	Alexievich	1948-05-31	\N	female	2015	Literature	\N	\N	\N
368	Angus	Deaton	1945-10-19	\N	male	2015	Economics	\N	\N	59
369	Harvey	Alter	1935-09-12	\N	male	2020	Medicine	\N	\N	53
370	League of Red Cross Societies	\N	\N	\N	org	1963	Peace	\N	\N	\N
371	Amnesty International	\N	\N	\N	org	1977	Peace	\N	\N	\N
372	John	Hume	1937-01-18	2020-08-03	male	1998	Peace	\N	\N	\N
373	Henryk	Sienkiewicz	1846-05-05	1916-11-15	male	1905	Literature	\N	\N	\N
374	Sinclair	Lewis	1885-02-07	1951-01-10	male	1930	Literature	\N	\N	\N
375	François	Mauriac	1885-10-11	1970-09-01	male	1952	Literature	\N	\N	\N
376	Samuel	Beckett	1906-04-13	1989-12-22	male	1969	Literature	\N	\N	\N
377	Eugenio	Montale	1896-10-12	1981-09-12	male	1975	Literature	\N	\N	\N
378	Saul	Bellow	1915-06-10	2005-04-05	male	1976	Literature	\N	\N	\N
379	William	Golding	1911-09-19	1993-06-19	male	1983	Literature	\N	\N	\N
380	José	Saramago	1922-11-16	2010-06-18	male	1998	Literature	\N	\N	\N
381	Jan	Tinbergen	1903-04-12	1994-06-09	male	1969	Economics	\N	\N	159
382	Robert M.	Solow	1924-08-23	\N	male	1987	Economics	\N	\N	12
383	William F.	Sharpe	1934-06-16	\N	male	1990	Economics	\N	\N	55
384	Roger B.	Myerson	1951-03-29	\N	male	2007	Economics	\N	\N	10
385	Harald	zur Hausen	1936-03-11	2023-05-28	male	2008	Medicine	\N	\N	160
386	Roger Y.	Tsien	1952-02-01	2016-08-24	male	2008	Chemistry	\N	\N	25
387	Herta	Müller	1953-08-17	\N	female	2009	Literature	\N	\N	\N
388	Alvin E.	Roth	1951-12-18	\N	male	2012	Economics	\N	\N	23
389	Ferdinand	Braun	1850-06-06	1918-04-20	male	1909	Physics	\N	\N	161
390	William	Bragg	1862-07-02	1942-03-12	male	1915	Physics	\N	\N	162
391	Tsung-Dao	Lee	1926-11-24	\N	male	1957	Physics	\N	\N	64
392	Louis	Néel	1904-11-22	2000-11-17	male	1970	Physics	\N	\N	163
393	Ivar	Giaever	1929-04-05	\N	male	1973	Physics	\N	\N	164
394	Burton	Richter	1931-03-22	2018-07-18	male	1976	Physics	\N	\N	165
395	Jean	Dausset	1916-10-19	2009-06-06	male	1980	Medicine	\N	\N	166
396	Sir Peter	Mansfield	1933-10-09	2017-02-08	male	2003	Medicine	\N	\N	167
397	Avram	Hershko	1937-12-31	\N	male	2004	Chemistry	\N	\N	114
398	Edmund S.	Phelps	1933-07-26	\N	male	2006	Economics	\N	\N	64
399	Clifford G.	Shull	1915-09-23	2001-03-31	male	1994	Physics	\N	\N	12
400	Emil	Fischer	1852-10-09	1919-07-15	male	1902	Chemistry	\N	\N	29
401	Fritz	Pregl	1869-09-03	1930-12-13	male	1923	Chemistry	\N	\N	168
402	Jane	Addams	1860-09-06	1935-05-21	female	1931	Peace	\N	\N	\N
403	Friends Service Council	\N	\N	\N	org	1947	Peace	\N	\N	\N
404	Norman	Borlaug	1914-03-25	2009-09-12	male	1970	Peace	\N	\N	\N
405	Alva	Myrdal	1902-01-31	1986-02-01	female	1982	Peace	\N	\N	\N
406	Joseph	Rotblat	1908-11-04	2005-08-31	male	1995	Peace	\N	\N	\N
407	Salvatore	Quasimodo	1901-08-20	1968-06-14	male	1959	Literature	\N	\N	\N
408	Vicente	Aleixandre	1898-04-26	1984-12-14	male	1977	Literature	\N	\N	\N
409	Derek	Walcott	1930-01-23	2017-03-17	male	1992	Literature	\N	\N	\N
410	Friedrich	von Hayek	1899-05-08	1992-03-23	male	1974	Economics	\N	\N	\N
411	William	Vickrey	1914-06-21	1996-10-11	male	1996	Economics	\N	\N	64
412	Amartya	Sen	1933-11-03	\N	male	1998	Economics	\N	\N	169
413	Ronald G.W.	Norrish	1897-11-09	1978-06-07	male	1967	Chemistry	\N	\N	170
414	Ernst Otto	Fischer	1918-11-10	2007-07-23	male	1973	Chemistry	\N	\N	171
415	Robert	Bárány	1876-04-22	1936-04-08	male	1914	Medicine	\N	\N	101
416	Peter	Medawar	1915-02-28	1987-10-02	male	1960	Medicine	\N	\N	162
417	Charles B.	Huggins	1901-09-22	1997-01-12	male	1966	Medicine	\N	\N	172
418	George H.	Hitchings	1905-04-18	1998-02-27	male	1988	Medicine	\N	\N	108
419	J. Michael	Bishop	1936-02-22	\N	male	1989	Medicine	\N	\N	157
420	Bert	Sakmann	1942-06-12	\N	male	1991	Medicine	\N	\N	173
421	Reinhard	Genzel	1952-03-24	\N	male	2020	Physics	\N	\N	174
422	Jennifer A.	Doudna	1964-02-19	\N	female	2020	Chemistry	\N	\N	25
423	Albert A.	Michelson	1852-12-19	1931-05-09	male	1907	Physics	\N	\N	10
424	Hideki	Yukawa	1907-01-23	1981-09-08	male	1949	Physics	\N	\N	64
425	Pavel A.	Cherenkov	1904-07-28	1990-01-06	male	1958	Physics	\N	\N	125
426	Julian	Schwinger	1918-02-12	1994-07-16	male	1965	Physics	\N	\N	23
427	Alfred	Kastler	1902-05-03	1984-01-07	male	1966	Physics	\N	\N	175
428	Gerald M.	Edelman	1929-07-01	2014-05-17	male	1972	Medicine	\N	\N	54
429	Karl	von Frisch	1886-11-20	1982-06-12	male	1973	Medicine	\N	\N	176
430	Erwin	Neher	1944-03-20	\N	male	1991	Medicine	\N	\N	177
431	Günter	Blobel	1936-05-21	2018-02-18	male	1999	Medicine	\N	\N	54
432	Randal	Cremer	1828-03-18	1908-07-22	male	1903	Peace	\N	\N	\N
433	Albert	Schweitzer	1875-01-14	1965-09-04	male	1952	Peace	\N	\N	\N
434	Lech	Walesa	1943-09-29	\N	male	1983	Peace	\N	\N	\N
435	Karl	Gjellerup	1857-06-02	1919-10-11	male	1917	Literature	\N	\N	\N
436	John	Galsworthy	1867-08-14	1933-01-31	male	1932	Literature	\N	\N	\N
437	Heinrich	Böll	1917-12-21	1985-07-16	male	1972	Literature	\N	\N	\N
438	Bertil	Ohlin	1899-04-23	1979-08-03	male	1977	Economics	\N	\N	178
439	Otto	Warburg	1883-10-08	1970-08-01	male	1931	Medicine	\N	\N	179
440	Maurice	Allais	1911-05-31	2010-10-09	male	1988	Economics	\N	\N	180
441	George E.	Smith	1930-05-10	\N	male	2009	Physics	\N	\N	112
442	Lloyd S.	Shapley	1923-06-02	2016-03-12	male	2012	Economics	\N	\N	25
443	Robert F.	Engle III	1942-11-10	\N	male	2003	Economics	\N	\N	181
444	Oliver	Smithies	1925-06-23	2017-01-10	male	2007	Medicine	\N	\N	36
445	John H.	Van Vleck	1899-03-13	1980-10-27	male	1977	Physics	\N	\N	23
446	William D.	Phillips	1948-11-05	\N	male	1997	Physics	\N	\N	182
447	Adolf	von Baeyer	1835-10-31	1917-08-20	male	1905	Chemistry	\N	\N	183
448	Robert S.	Mulliken	1896-06-07	1986-10-31	male	1966	Chemistry	\N	\N	10
449	Walter	Kohn	1923-03-09	2016-04-19	male	1998	Chemistry	\N	\N	25
450	Glenn T.	Seaborg	1912-04-19	1999-02-25	male	1951	Chemistry	\N	\N	25
451	Edwin M.	McMillan	1907-09-18	1991-09-07	male	1951	Chemistry	\N	\N	25
452	Frederick	Sanger	1918-08-13	2013-11-19	male	1980	Chemistry	\N	\N	21
453	Odd	Hassel	1897-05-17	1981-05-11	male	1969	Chemistry	\N	\N	184
454	Georg	Wittig	1897-06-16	1987-08-26	male	1979	Chemistry	\N	\N	143
455	Kenichi	Fukui	1918-10-04	1998-01-09	male	1981	Chemistry	\N	\N	185
456	Robert C.	Richardson	1937-06-26	2013-02-19	male	1996	Physics	\N	\N	50
457	James B.	Sumner	1887-11-19	1955-08-12	male	1946	Chemistry	\N	\N	50
458	Johannes Diderik	van der Waals	1837-11-23	1923-03-08	male	1910	Physics	\N	\N	186
459	Charles Edouard	Guillaume	1861-02-15	1938-06-13	male	1920	Physics	\N	\N	187
460	C.T.R.	Wilson	1869-02-14	1959-11-15	male	1927	Physics	\N	\N	74
461	Ernest T.S.	Walton	1903-10-06	1995-06-25	male	1951	Physics	\N	\N	169
462	Allvar	Gullstrand	1862-06-05	1930-07-28	male	1911	Medicine	\N	\N	14
463	Alexis	Carrel	1873-06-28	1944-11-05	male	1912	Medicine	\N	\N	102
464	Dickinson W.	Richards	1895-10-30	1973-02-23	male	1956	Medicine	\N	\N	64
465	International Committee of the Red Cross	\N	\N	\N	org	1917	Peace	\N	\N	\N
466	Ferdinand	Buisson	1841-12-20	1932-02-16	male	1927	Peace	\N	\N	\N
467	Robert	Cecil	1864-09-14	1958-11-24	male	1937	Peace	\N	\N	\N
468	International Physicians for the Prevention of Nuclear War	\N	\N	\N	org	1985	Peace	\N	\N	\N
469	Elie	Wiesel	1928-09-30	2016-07-02	male	1986	Peace	\N	\N	\N
470	T.S.	Eliot	1888-09-26	1965-01-04	male	1948	Literature	\N	\N	\N
471	Juan Ramón	Jiménez	1881-12-24	1958-05-29	male	1956	Literature	\N	\N	\N
472	Nelly	Sachs	1891-12-10	1970-05-12	female	1966	Literature	\N	\N	\N
473	Pablo	Neruda	1904-07-12	1973-09-23	male	1971	Literature	\N	\N	\N
474	Isaac Bashevis	Singer	1904-07-14	1991-07-24	male	1978	Literature	\N	\N	\N
475	Franco	Modigliani	1918-06-18	2003-09-25	male	1985	Economics	\N	\N	12
476	James A.	Mirrlees	1936-07-05	2018-08-29	male	1996	Economics	\N	\N	74
477	Koichi	Tanaka	1959-08-03	\N	male	2002	Chemistry	\N	\N	188
478	Jimmy	Carter	1924-10-01	\N	male	2002	Peace	\N	\N	\N
479	Oliver	Hart	1948-10-09	\N	male	2016	Economics	\N	\N	23
480	Denis	Mukwege	1955-03-01	\N	male	2018	Peace	\N	\N	\N
481	Nadia	Murad	\N	\N	female	2018	Peace	\N	\N	\N
482	Michael	Kremer	1964-11-12	\N	male	2019	Economics	\N	\N	23
483	David	Card	\N	\N	male	2021	Economics	\N	\N	25
484	Bernard L.	Feringa	1951-05-18	\N	male	2016	Chemistry	\N	\N	189
485	Donna	Strickland	1959-05-27	\N	female	2018	Physics	\N	\N	190
486	Abhijit	Banerjee	1961-02-21	\N	male	2019	Economics	\N	\N	12
487	Carolyn	Bertozzi	1966-10-10	\N	female	2022	Chemistry	\N	\N	55
488	Memorial	\N	\N	\N	org	2022	Peace	\N	\N	\N
489	Hermann	Staudinger	1881-03-23	1965-09-08	male	1953	Chemistry	\N	\N	191
490	Frederick	Sanger	1918-08-13	2013-11-19	male	1958	Chemistry	\N	\N	74
491	Jean-Marie	Lehn	1939-09-30	\N	male	1987	Chemistry	\N	\N	192
492	Michael	Smith	1932-04-26	2000-10-04	male	1993	Chemistry	\N	\N	193
493	John E.	Walker	1941-01-07	\N	male	1997	Chemistry	\N	\N	21
494	Max	von Laue	1879-10-09	1960-04-23	male	1914	Physics	\N	\N	194
495	Arthur H.	Compton	1892-09-10	1962-03-15	male	1927	Physics	\N	\N	10
496	John	Cockcroft	1897-05-27	1967-09-18	male	1951	Physics	\N	\N	195
497	Felix	Bloch	1905-10-23	1983-09-10	male	1952	Physics	\N	\N	55
498	Willis E.	Lamb	1913-07-12	2008-05-15	male	1955	Physics	\N	\N	55
499	Robert	Schrieffer	1931-05-31	2019-07-27	male	1972	Physics	\N	\N	196
500	Andrew V.	Schally	1926-11-30	\N	male	1977	Medicine	\N	\N	197
501	Edmond H.	Fischer	1920-04-06	2021-08-27	male	1992	Medicine	\N	\N	57
502	Rolf M.	Zinkernagel	1944-01-06	\N	male	1996	Medicine	\N	\N	198
503	Robert	Koch	1843-12-11	1910-05-27	male	1905	Medicine	\N	\N	199
504	Sir Henry	Dale	1875-06-09	1968-07-23	male	1936	Medicine	\N	\N	127
505	Joseph	Erlanger	1874-01-05	1965-12-05	male	1944	Medicine	\N	\N	200
506	Werner	Forssmann	1904-08-29	1979-06-01	male	1956	Medicine	\N	\N	201
507	Klaus	von Klitzing	1943-06-28	\N	male	1985	Physics	\N	\N	202
508	Robert B.	Laughlin	1950-11-01	\N	male	1998	Physics	\N	\N	55
509	Arthur	Harden	1865-10-12	1940-06-17	male	1929	Chemistry	\N	\N	5
510	Adolf	Butenandt	1903-03-24	1995-01-18	male	1939	Chemistry	\N	\N	203
511	Otto	Hahn	1879-03-08	1968-07-28	male	1944	Chemistry	\N	\N	80
512	Klas Pontus	Arnoldson	1844-10-27	1916-02-20	male	1908	Peace	\N	\N	\N
513	Woodrow	Wilson	1856-12-28	1924-02-03	male	1919	Peace	\N	\N	\N
514	Rudyard	Kipling	1865-12-30	1936-01-18	male	1907	Literature	\N	\N	\N
515	Eugene	O'Neill	1888-10-16	1953-11-27	male	1936	Literature	\N	\N	\N
516	Bertrand	Russell	1872-05-18	1970-02-02	male	1950	Literature	\N	\N	\N
517	Kenzaburo	Oe	1935-01-31	2023-03-03	male	1994	Literature	\N	\N	\N
518	James E.	Meade	1907-06-23	1995-12-22	male	1977	Economics	\N	\N	74
519	Il´ja M.	Frank	1908-10-23	1990-06-22	male	1958	Physics	\N	\N	117
520	Kim	Dae-jung	1925-12-03	2009-08-18	male	2000	Peace	\N	\N	\N
521	Martin	Chalfie	1947-01-15	\N	male	2008	Chemistry	\N	\N	64
522	Barack	Obama	1961-08-04	\N	male	2009	Peace	\N	\N	\N
523	Shinya	Yamanaka	1962-09-04	\N	male	2012	Medicine	\N	\N	185
524	May-Britt	Moser	1963-01-04	\N	female	2014	Medicine	\N	\N	204
525	Edvard I.	Moser	1962-04-27	\N	male	2014	Medicine	\N	\N	204
526	Ryoji	Noyori	1938-09-03	\N	male	2001	Chemistry	\N	\N	122
527	Raymond	Davis Jr.	1914-10-14	2006-05-31	male	2002	Physics	\N	\N	196
528	John L.	Hall	1934-08-21	\N	male	2005	Physics	\N	\N	158
529	James	Cronin	1931-09-29	2016-08-25	male	1980	Physics	\N	\N	10
530	Subrahmanyan	Chandrasekhar	1910-10-19	1995-08-21	male	1983	Physics	\N	\N	10
531	Wolfgang	Paul	1913-08-10	1993-12-07	male	1989	Physics	\N	\N	205
532	Richard	Zsigmondy	1865-04-01	1929-09-24	male	1925	Chemistry	\N	\N	32
533	William F.	Giauque	1895-05-12	1982-03-28	male	1949	Chemistry	\N	\N	25
534	Sir Bernard	Katz	1911-03-26	2003-04-20	male	1970	Medicine	\N	\N	162
535	Julius	Axelrod	1912-05-30	2004-12-29	male	1970	Medicine	\N	\N	53
536	Niels Ryberg	Finsen	1860-12-15	1904-09-24	male	1903	Medicine	\N	\N	206
537	Alphonse	Laveran	1845-06-18	1922-05-18	male	1907	Medicine	\N	\N	49
538	John F.	Enders	1897-02-10	1985-09-08	male	1954	Medicine	\N	\N	11
539	Edward	Tatum	1909-12-14	1975-11-05	male	1958	Medicine	\N	\N	102
540	Hans	Bethe	1906-07-02	2005-03-06	male	1967	Physics	\N	\N	50
541	Hannes	Alfvén	1908-05-30	1995-04-02	male	1970	Physics	\N	\N	207
542	Konstantin	Novoselov	1974-08-23	\N	male	2010	Physics	\N	\N	147
543	Tomas	Tranströmer	1931-04-15	2015-03-26	male	2011	Literature	\N	\N	\N
544	Robert J.	Lefkowitz	1943-04-15	\N	male	2012	Chemistry	\N	\N	208
545	Mo	Yan	1956-03-25	\N	male	2012	Literature	\N	\N	\N
546	Frank	Wilczek	1951-05-15	\N	male	2004	Physics	\N	\N	12
547	Richard R.	Schrock	1945-01-04	\N	male	2005	Chemistry	\N	\N	12
548	Joachim	Frank	1940-09-12	\N	male	2017	Chemistry	\N	\N	64
549	World Food Programme	\N	\N	\N	org	2020	Peace	\N	\N	\N
550	David	Julius	1955-11-04	\N	male	2021	Medicine	\N	\N	25
551	Bertha	von Suttner	1843-06-09	1914-06-21	female	1905	Peace	\N	\N	\N
552	Mikhail	Gorbachev	1931-03-02	2022-08-30	male	1990	Peace	\N	\N	\N
553	Trygve	Haavelmo	1911-12-13	1999-07-26	male	1989	Economics	\N	\N	184
554	Zhores	Alferov	1930-03-15	2019-03-01	male	2000	Physics	\N	\N	209
555	Alan	Heeger	1936-01-22	\N	male	2000	Chemistry	\N	\N	25
556	Earl W.	Sutherland Jr.	1915-11-19	1974-03-09	male	1971	Medicine	\N	\N	210
557	Konrad	Lorenz	1903-11-07	1989-02-27	male	1973	Medicine	\N	\N	211
558	George E.	Palade	1912-11-19	2008-10-07	male	1974	Medicine	\N	\N	212
559	Barry J.	Marshall	1951-09-30	\N	male	2005	Medicine	\N	\N	213
560	George F.	Smoot	1945-02-20	\N	male	2006	Physics	\N	\N	25
561	Willard F.	Libby	1908-12-17	1980-09-08	male	1960	Chemistry	\N	\N	25
562	Karl	Ziegler	1898-11-26	1973-08-12	male	1963	Chemistry	\N	\N	141
563	Ernst	Ruska	1906-12-25	1988-05-27	male	1986	Physics	\N	\N	214
564	Heinrich	Rohrer	1933-06-06	2013-05-16	male	1986	Physics	\N	\N	17
565	John H.	Northrop	1891-07-05	1987-05-27	male	1946	Chemistry	\N	\N	102
566	Niels	Bohr	1885-10-07	1962-11-18	male	1922	Physics	\N	\N	33
567	Erwin	Schrödinger	1887-08-12	1961-01-04	male	1933	Physics	\N	\N	29
568	Robert	Hofstadter	1915-02-05	1990-11-17	male	1961	Physics	\N	\N	55
569	Maria	Goeppert Mayer	1906-06-28	1972-02-20	female	1963	Physics	\N	\N	25
570	Nicolay G.	Basov	1922-12-14	2001-07-01	male	1964	Physics	\N	\N	125
571	James	Rainwater	1917-12-09	1986-03-31	male	1975	Physics	\N	\N	64
572	Adam G.	Riess	1969-12-16	\N	male	2011	Physics	\N	\N	215
573	Alice	Munro	1931-07-10	\N	female	2013	Literature	\N	\N	\N
574	Isamu	Akasaki	1929-01-30	2021-04-01	male	2014	Physics	\N	\N	216
575	John	Pople	1925-10-31	2004-03-15	male	1998	Chemistry	\N	\N	42
576	Michael	Rosbash	1944-03-07	\N	male	2017	Medicine	\N	\N	217
577	Peter	Ratcliffe	1954-05-14	\N	male	2019	Medicine	\N	\N	20
578	Roger	Penrose	1931-08-08	\N	male	2020	Physics	\N	\N	20
579	Alain	Aspect	1947-06-15	\N	male	2022	Physics	\N	\N	218
580	Daniel	Nathans	1928-10-30	1999-11-16	male	1978	Medicine	\N	\N	219
581	Henri	La Fontaine	1854-04-22	1943-05-14	male	1913	Peace	\N	\N	\N
582	Sir Austen	Chamberlain	1863-10-16	1937-03-16	male	1925	Peace	\N	\N	\N
583	Arthur	Henderson	1863-09-13	1935-10-20	male	1934	Peace	\N	\N	\N
584	Ralph	Bunche	1904-08-07	1971-12-09	male	1950	Peace	\N	\N	23
585	United Nations Children's Fund	\N	\N	\N	org	1965	Peace	\N	\N	\N
586	Betty	Williams	1943-05-22	2020-03-17	female	1976	Peace	\N	\N	\N
587	Yitzhak	Rabin	1922-03-01	1995-11-04	male	1994	Peace	\N	\N	\N
588	Miguel Angel	Asturias	1899-10-19	1974-06-09	male	1967	Literature	\N	\N	\N
589	John R.	Hicks	1904-04-08	1989-05-20	male	1972	Economics	\N	\N	220
590	Alfred G.	Gilman	1941-07-01	2015-12-23	male	1994	Medicine	\N	\N	92
591	Eduard	Buchner	1860-05-20	1917-08-13	male	1907	Chemistry	\N	\N	221
592	Paul	Krugman	1953-02-28	\N	male	2008	Economics	\N	\N	59
593	Elinor	Ostrom	1933-08-07	2012-06-12	female	2009	Economics	\N	\N	222
594	Akira	Suzuki	1930-09-12	\N	male	2010	Chemistry	\N	\N	223
595	Eugene F.	Fama	1939-02-14	\N	male	2013	Economics	\N	\N	10
596	Paul	Modrich	1946-06-13	\N	male	2015	Chemistry	\N	\N	208
597	Michel	Mayor	1942-01-12	\N	male	2019	Physics	\N	\N	224
598	John	Goodenough	1922-07-25	2023-06-25	male	2019	Chemistry	\N	\N	225
599	Paul	Milgrom	1948-04-20	\N	male	2020	Economics	\N	\N	55
600	Anton	Zeilinger	1945-05-20	\N	male	2022	Physics	\N	\N	226
601	V. S.	Naipaul	1932-08-17	2018-08-11	male	2001	Literature	\N	\N	\N
602	Richard	Axel	1946-07-02	\N	male	2004	Medicine	\N	\N	64
603	Max	Theiler	1899-01-30	1972-08-11	male	1951	Medicine	\N	\N	227
604	Hugo	Theorell	1903-07-06	1982-08-15	male	1955	Medicine	\N	\N	228
605	Sir Frank Macfarlane	Burnet	1899-09-03	1985-08-31	male	1960	Medicine	\N	\N	229
606	Marie	Curie	1867-11-07	1934-07-04	female	1903	Physics	\N	\N	\N
607	Jean Baptiste	Perrin	1870-09-30	1942-04-17	male	1926	Physics	\N	\N	137
608	Richard P.	Feynman	1918-05-11	1988-02-15	male	1965	Physics	\N	\N	83
609	Ben R.	Mottelson	1926-07-09	2022-05-13	male	1975	Physics	\N	\N	230
610	Dorothy Crowfoot	Hodgkin	1910-05-12	1994-07-29	female	1964	Chemistry	\N	\N	231
611	Roald	Hoffmann	1937-07-18	\N	male	1981	Chemistry	\N	\N	50
612	Henri	Bergson	1859-10-18	1941-01-04	male	1927	Literature	\N	\N	\N
613	Hermann	Hesse	1877-07-02	1962-08-09	male	1946	Literature	\N	\N	\N
614	Kenneth J.	Arrow	1921-08-23	2017-02-21	male	1972	Economics	\N	\N	23
615	Wassily	Leontief	1906-08-05	1999-02-05	male	1973	Economics	\N	\N	23
616	Herbert	Simon	1916-06-15	2001-02-09	male	1978	Economics	\N	\N	232
617	George J.	Stigler	1911-01-17	1991-12-01	male	1982	Economics	\N	\N	10
618	Ronald H.	Coase	1910-12-29	2013-09-02	male	1991	Economics	\N	\N	10
619	Eric	Kandel	1929-11-07	\N	male	2000	Medicine	\N	\N	64
620	Eric	Cornell	1961-12-19	\N	male	2001	Physics	\N	\N	158
621	H. David	Politzer	1949-08-31	\N	male	2004	Physics	\N	\N	83
622	Gerhard	Ertl	1936-10-10	\N	male	2007	Chemistry	\N	\N	214
623	Doris	Lessing	1919-10-22	2013-11-17	female	2007	Literature	\N	\N	\N
624	Salvador E.	Luria	1912-08-13	1991-02-06	male	1969	Medicine	\N	\N	12
625	Roger	Guillemin	1924-01-11	\N	male	1977	Medicine	\N	\N	233
626	Hans	von Euler-Chelpin	1873-02-15	1964-11-06	male	1929	Chemistry	\N	\N	19
627	Irving	Langmuir	1881-01-31	1957-08-16	male	1932	Chemistry	\N	\N	164
628	Norman	Haworth	1883-03-19	1950-03-19	male	1937	Chemistry	\N	\N	234
629	Fredrik	Bajer	1837-04-21	1922-01-22	male	1908	Peace	\N	\N	\N
630	Tobias	Asser	1838-04-28	1913-07-29	male	1911	Peace	\N	\N	\N
631	Frank B.	Kellogg	1856-12-22	1937-12-21	male	1929	Peace	\N	\N	\N
632	Martin Luther	King Jr.	1929-01-15	1968-04-04	male	1964	Peace	\N	\N	\N
633	Pugwash Conferences on Science and World Affairs	\N	\N	\N	org	1995	Peace	\N	\N	\N
634	Yasunari	Kawabata	1899-06-11	1972-04-16	male	1968	Literature	\N	\N	\N
635	Patrick	White	1912-05-28	1990-09-30	male	1973	Literature	\N	\N	\N
636	Leland	Hartwell	1939-10-30	\N	male	2001	Medicine	\N	\N	235
637	Samuel C.C.	Ting	1936-01-27	\N	male	1976	Physics	\N	\N	12
638	William A.	Fowler	1911-08-09	1995-03-14	male	1983	Physics	\N	\N	83
639	The	Svedberg	1884-08-30	1971-02-25	male	1926	Chemistry	\N	\N	14
640	Charles	Richet	1850-08-26	1935-12-04	male	1913	Medicine	\N	\N	137
641	George R.	Minot	1885-12-02	1950-02-25	male	1934	Medicine	\N	\N	23
642	Hans	Spemann	1869-06-27	1941-09-12	male	1935	Medicine	\N	\N	236
643	Edward C.	Kendall	1886-03-08	1972-05-04	male	1950	Medicine	\N	\N	47
644	Arthur	Kornberg	1918-03-03	2007-10-26	male	1959	Medicine	\N	\N	55
645	Andrew	Huxley	1917-11-22	2012-05-30	male	1963	Medicine	\N	\N	162
646	Paul J.	Flory	1910-06-19	1985-09-08	male	1974	Chemistry	\N	\N	55
647	Bruce	Merrifield	1921-07-15	2006-05-14	male	1984	Chemistry	\N	\N	54
648	Ei-ichi	Negishi	1935-07-14	2021-06-06	male	2010	Chemistry	\N	\N	98
649	Christopher A.	Pissarides	1948-02-20	\N	male	2010	Economics	\N	\N	237
650	Jean	Tirole	1953-08-09	\N	male	2014	Economics	\N	\N	238
651	Gérard	Mourou	1944-06-22	\N	male	2018	Physics	\N	\N	118
652	Louise	Glück	1943-04-22	\N	female	2020	Literature	\N	\N	\N
653	Roger W.	Sperry	1913-08-20	1994-04-17	male	1981	Medicine	\N	\N	83
654	Barbara	McClintock	1902-06-16	1992-09-02	female	1983	Medicine	\N	\N	239
655	Stanley	Cohen	1922-11-17	2020-02-05	male	1986	Medicine	\N	\N	240
656	E. Donnall	Thomas	1920-03-15	2012-10-20	male	1990	Medicine	\N	\N	235
657	Martin	Rodbell	1925-12-01	1998-12-07	male	1994	Medicine	\N	\N	241
658	Gabriel	Lippmann	1845-08-16	1921-07-13	male	1908	Physics	\N	\N	137
659	Victor F.	Hess	1883-06-24	1964-12-17	male	1936	Physics	\N	\N	242
660	Clinton	Davisson	1881-10-22	1958-02-01	male	1937	Physics	\N	\N	39
661	Otto	Stern	1888-02-17	1969-08-17	male	1943	Physics	\N	\N	243
662	J. Hans D.	Jensen	1907-06-25	1973-02-11	male	1963	Physics	\N	\N	143
663	Philip W.	Anderson	1923-12-13	2020-03-29	male	1977	Physics	\N	\N	39
664	Abdus	Salam	1926-01-29	1996-11-21	male	1979	Physics	\N	\N	244
665	Nicolaas	Bloembergen	1920-03-11	2017-09-05	male	1981	Physics	\N	\N	23
666	Nikolay	Semenov	1896-04-03	1986-09-25	male	1956	Chemistry	\N	\N	245
667	Hartmut	Michel	1948-07-18	\N	male	1988	Chemistry	\N	\N	246
668	Cordell	Hull	1871-10-02	1955-07-23	male	1945	Peace	\N	\N	\N
669	International Labour Organization	\N	\N	\N	org	1969	Peace	\N	\N	\N
670	Seán	MacBride	1904-01-26	1988-01-15	male	1974	Peace	\N	\N	\N
671	Anatole	France	1844-04-16	1924-10-12	male	1921	Literature	\N	\N	\N
672	William Butler	Yeats	1865-06-13	1939-01-28	male	1923	Literature	\N	\N	\N
673	Johannes V.	Jensen	1873-01-20	1950-11-25	male	1944	Literature	\N	\N	\N
674	Dario	Fo	1926-03-24	2016-10-13	male	1997	Literature	\N	\N	\N
675	James J.	Heckman	1944-04-19	\N	male	2000	Economics	\N	\N	10
676	Sir Paul	Nurse	1949-01-25	\N	male	2001	Medicine	\N	\N	26
677	Arthur	Ashkin	1922-09-02	2020-09-21	male	2018	Physics	\N	\N	112
678	Charles	Rice	1952-08-25	\N	male	2020	Medicine	\N	\N	54
679	Annie	Ernaux	1940-09-01	\N	female	2022	Literature	\N	\N	\N
680	Philip	Dybvig	1955-05-22	\N	male	2022	Economics	\N	\N	200
681	Ahmed	Zewail	1946-02-26	2016-08-02	male	1999	Chemistry	\N	\N	83
682	Carl	Cori	1896-12-05	1984-10-20	male	1947	Medicine	\N	\N	200
683	Tadeus	Reichstein	1897-07-20	1996-08-01	male	1950	Medicine	\N	\N	247
684	George	Beadle	1903-10-22	1989-06-09	male	1958	Medicine	\N	\N	83
685	Richard E.	Taylor	1929-11-02	2018-02-22	male	1990	Physics	\N	\N	55
686	Baruj	Benacerraf	1920-10-29	2011-08-02	male	1980	Medicine	\N	\N	11
687	David H.	Hubel	1926-02-27	2013-09-22	male	1981	Medicine	\N	\N	11
688	Marie	Curie	1867-11-07	1934-07-04	female	1911	Chemistry	\N	\N	137
689	J.J.	Thomson	1856-12-18	1940-08-30	male	1906	Physics	\N	\N	74
690	Owen Willans	Richardson	1879-04-26	1959-02-15	male	1928	Physics	\N	\N	5
691	H. Robert	Horvitz	1947-05-08	\N	male	2002	Medicine	\N	\N	12
692	Imre	Kertész	1929-11-09	2016-03-31	male	2002	Literature	\N	\N	\N
693	Peter	Agre	1949-01-30	\N	male	2003	Chemistry	\N	\N	219
694	Roderick	MacKinnon	1956-02-19	\N	male	2003	Chemistry	\N	\N	54
695	Clive W.J.	Granger	1934-09-04	2009-05-27	male	2003	Economics	\N	\N	25
696	Orhan	Pamuk	1952-06-07	\N	male	2006	Literature	\N	\N	\N
697	European Union	\N	\N	\N	org	2012	Peace	\N	\N	\N
698	Kenneth G.	Wilson	1936-06-08	2013-06-15	male	1982	Physics	\N	\N	50
699	Norman F.	Ramsey	1915-08-27	2011-11-04	male	1989	Physics	\N	\N	23
700	Douglas D.	Osheroff	1945-08-01	\N	male	1996	Physics	\N	\N	55
701	Heinrich	Wieland	1877-06-04	1957-08-05	male	1927	Chemistry	\N	\N	183
702	George Paget	Thomson	1892-05-03	1975-09-10	male	1937	Physics	\N	\N	5
703	Wolfgang	Pauli	1900-04-25	1958-12-15	male	1945	Physics	\N	\N	59
704	Cecil	Powell	1903-12-05	1969-08-09	male	1950	Physics	\N	\N	248
705	Walther	Bothe	1891-01-08	1957-02-08	male	1954	Physics	\N	\N	143
706	Martin	Ryle	1918-09-27	1984-10-14	male	1974	Physics	\N	\N	74
707	Val	Fitch	1923-03-10	2015-02-05	male	1980	Physics	\N	\N	59
708	Paul D.	Boyer	1918-07-31	2018-06-02	male	1997	Chemistry	\N	\N	25
709	Emil	von Behring	1854-03-15	1917-03-31	male	1901	Medicine	\N	\N	249
710	Sir Frederick	Hopkins	1861-06-20	1947-05-16	male	1929	Medicine	\N	\N	74
711	Hermann J.	Muller	1890-12-21	1967-04-05	male	1946	Medicine	\N	\N	222
712	Walter	Hess	1881-03-17	1973-08-12	male	1949	Medicine	\N	\N	79
713	Severo	Ochoa	1905-09-24	1993-11-01	male	1959	Medicine	\N	\N	250
714	Feodor	Lynen	1911-04-06	1979-08-06	male	1964	Medicine	\N	\N	251
715	Eisaku	Sato	1901-03-27	1975-06-03	male	1974	Peace	\N	\N	\N
716	Menachem	Begin	1913-08-16	1992-03-09	male	1978	Peace	\N	\N	\N
717	Ivo	Andric	1892-10-10	1975-03-13	male	1961	Literature	\N	\N	\N
718	Ragnar	Frisch	1895-03-03	1973-01-31	male	1969	Economics	\N	\N	184
719	Leonid Vitaliyevich	Kantorovich	1912-01-19	1986-04-07	male	1975	Economics	\N	\N	153
720	Tjalling C.	Koopmans	1910-08-28	1985-02-26	male	1975	Economics	\N	\N	8
721	Reinhard	Selten	1930-10-05	2016-08-23	male	1994	Economics	\N	\N	252
722	Xingjian	Gao	1940-01-04	\N	male	2000	Literature	\N	\N	\N
723	David	Baltimore	1938-03-07	\N	male	1975	Medicine	\N	\N	12
724	Yoshinori	Ohsumi	1945-02-09	\N	male	2016	Medicine	\N	\N	253
725	Emmanuelle	Charpentier	1968-12-11	\N	female	2020	Chemistry	\N	\N	254
726	Svante	Pääbo	1955-04-20	\N	male	2022	Medicine	\N	\N	255
727	Finn E.	Kydland	1943-12-01	\N	male	2004	Economics	\N	\N	232
728	Al	Gore	1948-03-31	\N	male	2007	Peace	\N	\N	\N
729	Peter A.	Diamond	1940-04-29	\N	male	2010	Economics	\N	\N	12
730	Brian P.	Schmidt	1967-02-24	\N	male	2011	Physics	\N	\N	7
731	Thomas J.	Sargent	1943-07-19	\N	male	2011	Economics	\N	\N	181
732	Serge	Haroche	1944-09-11	\N	male	2012	Physics	\N	\N	126
733	William E.	Moerner	1953-06-24	\N	male	2014	Chemistry	\N	\N	55
734	Ilya	Mechnikov	1845-05-15	1916-07-15	male	1908	Medicine	\N	\N	49
735	Otto	Loewi	1873-06-03	1961-12-25	male	1936	Medicine	\N	\N	168
736	Paul	Müller	1899-01-12	1965-10-12	male	1948	Medicine	\N	\N	256
737	Selman A.	Waksman	1888-07-22	1973-08-16	male	1952	Medicine	\N	\N	257
738	Heike	Kamerlingh Onnes	1853-09-21	1926-02-21	male	1913	Physics	\N	\N	34
739	Emilio	Segrè	1905-02-01	1989-04-22	male	1959	Physics	\N	\N	25
740	Sin-Itiro	Tomonaga	1906-03-31	1979-07-08	male	1965	Physics	\N	\N	258
741	Luis	Alvarez	1911-06-13	1988-09-01	male	1968	Physics	\N	\N	25
742	Daniel	Kahneman	1934-03-05	\N	male	2002	Economics	\N	\N	59
743	Arno	Penzias	1933-04-26	\N	male	1978	Physics	\N	\N	112
744	Georges	Charpak	1924-08-01	2010-09-29	male	1992	Physics	\N	\N	259
745	Martin L.	Perl	1927-06-24	2014-09-30	male	1995	Physics	\N	\N	55
746	Friedrich	Bergius	1884-10-11	1949-03-30	male	1931	Chemistry	\N	\N	143
747	J. Michael	Kosterlitz	1943-06-22	\N	male	2016	Physics	\N	\N	16
748	Barry C.	Barish	1936-01-27	\N	male	2017	Physics	\N	\N	\N
749	Richard	Henderson	1945-07-19	\N	male	2017	Chemistry	\N	\N	21
750	Kazuo	Ishiguro	1954-11-08	\N	male	2017	Literature	\N	\N	\N
751	Paul M.	Romer	\N	\N	male	2018	Economics	\N	\N	260
752	Joshua	Angrist	1960-09-18	\N	male	2021	Economics	\N	\N	12
753	Rosalyn	Yalow	1921-07-19	2011-05-30	female	1977	Medicine	\N	\N	197
754	Hamilton O.	Smith	1931-08-23	\N	male	1978	Medicine	\N	\N	219
755	Torsten N.	Wiesel	1924-06-03	\N	male	1981	Medicine	\N	\N	11
756	José	Ramos-Horta	1949-12-26	\N	male	1996	Peace	\N	\N	\N
757	David	Trimble	1944-10-15	2022-07-25	male	1998	Peace	\N	\N	\N
758	George Bernard	Shaw	1856-07-26	1950-11-02	male	1925	Literature	\N	\N	\N
759	Erik Axel	Karlfeldt	1864-07-20	1931-04-08	male	1931	Literature	\N	\N	\N
760	Albert	Camus	1913-11-07	1960-01-04	male	1957	Literature	\N	\N	\N
761	Giorgos	Seferis	1900-03-13	1971-09-20	male	1963	Literature	\N	\N	\N
762	Nadine	Gordimer	1923-11-20	2014-07-13	female	1991	Literature	\N	\N	\N
763	Ilya	Prigogine	1917-01-25	2003-05-28	male	1977	Chemistry	\N	\N	113
764	Aaron	Klug	1926-08-11	2018-11-20	male	1982	Chemistry	\N	\N	21
765	Melvin	Calvin	1911-04-08	1997-01-08	male	1961	Chemistry	\N	\N	25
766	William H.	Stein	1911-06-25	1980-02-02	male	1972	Chemistry	\N	\N	54
767	Thomas R.	Cech	1947-12-08	\N	male	1989	Chemistry	\N	\N	261
768	K. Alex	Müller	1927-04-20	2023-01-09	male	1987	Physics	\N	\N	17
769	Russell A.	Hulse	1950-11-28	\N	male	1993	Physics	\N	\N	59
770	Wilhelm	Ostwald	1853-09-02	1932-04-04	male	1909	Chemistry	\N	\N	63
771	Johannes	Fibiger	1867-04-23	1928-01-30	male	1926	Medicine	\N	\N	33
772	Ernesto Teodoro	Moneta	1833-09-20	1918-02-10	male	1907	Peace	\N	\N	\N
773	Nansen International Office for Refugees	\N	\N	\N	org	1938	Peace	\N	\N	\N
774	Aung San Suu Kyi	\N	1945-06-19	\N	female	1991	Peace	\N	\N	\N
775	Frédéric	Mistral	1830-09-08	1914-03-25	male	1904	Literature	\N	\N	\N
776	Maurice	Maeterlinck	1862-08-29	1949-05-06	male	1911	Literature	\N	\N	\N
777	Romain	Rolland	1866-01-29	1944-12-30	male	1915	Literature	\N	\N	\N
778	Pearl	Buck	1892-06-26	1973-03-06	female	1938	Literature	\N	\N	\N
779	André	Gide	1869-11-22	1951-02-19	male	1947	Literature	\N	\N	\N
780	Joseph	Brodsky	1940-05-24	1996-01-28	male	1987	Literature	\N	\N	\N
781	Gunnar	Myrdal	1898-12-06	1987-05-17	male	1974	Economics	\N	\N	\N
782	Jack	Kilby	1923-11-08	2005-06-20	male	2000	Physics	\N	\N	262
783	Sir J. Fraser	Stoddart	1942-05-24	\N	male	2016	Chemistry	\N	\N	42
784	Klaus	Hasselmann	1931-10-25	\N	male	2021	Physics	\N	\N	263
785	Ben	Bernanke	1953-12-13	\N	male	2022	Economics	\N	\N	264
786	Carol W.	Greider	1961-04-15	\N	female	2009	Medicine	\N	\N	219
787	Charles K.	Kao	1933-11-04	2018-09-23	male	2009	Physics	\N	\N	265
788	David J.	Wineland	1944-02-24	\N	male	2012	Physics	\N	\N	182
789	Malala	Yousafzai	1997-07-12	\N	female	2014	Peace	\N	\N	\N
790	J. M.	Coetzee	1940-02-09	\N	male	2003	Literature	\N	\N	\N
791	David J.	Gross	1941-02-19	\N	male	2004	Physics	\N	\N	266
792	Elfriede	Jelinek	1946-10-20	\N	female	2004	Literature	\N	\N	\N
793	Frederick	Reines	1918-03-16	1998-08-26	male	1995	Physics	\N	\N	25
794	Pieter	Zeeman	1865-05-25	1943-10-09	male	1902	Physics	\N	\N	186
795	Charles Glover	Barkla	1877-06-07	1944-10-23	male	1917	Physics	\N	\N	120
796	Sir Chandrasekhara Venkata	Raman	1888-11-07	1970-11-21	male	1930	Physics	\N	\N	267
797	Rudolf	Mössbauer	1929-01-31	2011-09-14	male	1961	Physics	\N	\N	171
798	Antony	Hewish	1924-05-11	2021-09-13	male	1974	Physics	\N	\N	74
799	Luis	Leloir	1906-09-06	1987-12-02	male	1970	Chemistry	\N	\N	268
800	William P.	Murphy	1892-02-06	1987-10-09	male	1934	Medicine	\N	\N	23
801	Corneille	Heymans	1892-03-28	1968-07-18	male	1938	Medicine	\N	\N	269
802	Egas	Moniz	1874-11-29	1955-12-13	male	1949	Medicine	\N	\N	270
803	Georg	von Békésy	1899-06-03	1972-06-13	male	1961	Medicine	\N	\N	23
804	Keffer	Hartline	1903-12-22	1983-03-17	male	1967	Medicine	\N	\N	54
805	Michael W.	Young	1949-03-28	\N	male	2017	Medicine	\N	\N	54
806	Peter	Handke	1942-12-06	\N	male	2019	Literature	\N	\N	\N
807	Ardem	Patapoutian	\N	\N	male	2021	Medicine	\N	\N	149
808	Syukuro	Manabe	1931-09-21	\N	male	2021	Physics	\N	\N	59
809	Irwin	Rose	1926-07-16	2015-06-03	male	2004	Chemistry	\N	\N	25
810	Edward C.	Prescott	1940-12-26	2022-11-06	male	2004	Economics	\N	\N	271
811	J. Robin	Warren	1937-06-11	\N	male	2005	Medicine	\N	\N	\N
812	Mario R.	Capecchi	1937-10-06	\N	male	2007	Medicine	\N	\N	272
813	Robert F.	Curl Jr.	1933-08-23	2022-07-03	male	1996	Chemistry	\N	\N	156
814	Oliver E.	Williamson	1932-09-27	\N	male	2009	Economics	\N	\N	25
815	Harold E.	Varmus	1939-12-18	\N	male	1989	Medicine	\N	\N	157
816	Eric F.	Wieschaus	1947-06-08	\N	male	1995	Medicine	\N	\N	59
817	Institute of International Law	\N	\N	\N	org	1904	Peace	\N	\N	\N
818	Nathan	Söderblom	1866-01-15	1931-07-12	male	1930	Peace	\N	\N	\N
819	Lhamo	Thondup	1935-07-06	\N	male	1989	Peace	\N	\N	\N
820	Rigoberta	Menchú Tum	1959-01-09	\N	female	1992	Peace	\N	\N	\N
821	Theodor	Mommsen	1817-11-30	1903-11-01	male	1902	Literature	\N	\N	\N
822	Carl	Spitteler	1845-04-24	1924-12-29	male	1919	Literature	\N	\N	\N
823	Alexandr	Solzhenitsyn	1918-12-11	2008-08-03	male	1970	Literature	\N	\N	\N
824	Eyvind	Johnson	1900-07-29	1976-08-25	male	1974	Literature	\N	\N	\N
825	Ulf	von Euler	1905-02-07	1983-03-09	male	1970	Medicine	\N	\N	100
826	Albert	Claude	1898-08-24	1983-05-22	male	1974	Medicine	\N	\N	273
827	Christian	de Duve	1917-10-02	2013-05-04	male	1974	Medicine	\N	\N	54
828	Frédéric	Passy	1822-05-20	1912-06-12	male	1901	Peace	\N	\N	\N
829	Paul Henri	d'Estournelles de Constant	1852-11-22	1924-05-15	male	1909	Peace	\N	\N	\N
830	George C.	Marshall	1880-12-31	1959-10-16	male	1953	Peace	\N	\N	\N
831	Anjezë Gonxhe	Bojaxhiu	1910-08-26	1997-09-05	female	1979	Peace	\N	\N	\N
832	Nelson	Mandela	1918-07-18	2013-12-05	male	1993	Peace	\N	\N	\N
833	Yasser	Arafat	1929-08-24	2004-11-11	male	1994	Peace	\N	\N	\N
834	Shimon	Peres	1923-08-16	2016-09-28	male	1994	Peace	\N	\N	\N
835	Gerhart	Hauptmann	1862-11-15	1946-06-06	male	1912	Literature	\N	\N	\N
836	Boris	Pasternak	1890-02-10	1960-05-30	male	1958	Literature	\N	\N	\N
837	Alan	MacDiarmid	1927-04-14	2007-02-07	male	2000	Chemistry	\N	\N	196
838	Luc	Montagnier	1932-08-18	2022-02-08	male	2008	Medicine	\N	\N	274
839	Elizabeth H.	Blackburn	1948-11-26	\N	female	2009	Medicine	\N	\N	25
840	Jack W.	Szostak	1952-11-09	\N	male	2009	Medicine	\N	\N	11
841	Richard F.	Heck	1931-08-15	2015-10-09	male	2010	Chemistry	\N	\N	275
842	Thomas C.	Südhof	1955-12-22	\N	male	2013	Medicine	\N	\N	55
843	Howard M.	Temin	1934-12-10	1994-02-09	male	1975	Medicine	\N	\N	155
844	John R.	Vane	1927-03-29	2004-11-19	male	1982	Medicine	\N	\N	276
845	Christiane	Nüsslein-Volhard	1942-10-20	\N	female	1995	Medicine	\N	\N	277
846	Ferid	Murad	1936-09-14	2023-09-04	male	1998	Medicine	\N	\N	278
847	Andrea	Ghez	1965-06-16	\N	female	2020	Physics	\N	\N	25
848	Wilhelm Conrad	Röntgen	1845-03-27	1923-02-10	male	1901	Physics	\N	\N	183
849	Lawrence	Bragg	1890-03-31	1971-07-01	male	1915	Physics	\N	\N	38
850	Chen Ning	Yang	1922-09-22	\N	male	1957	Physics	\N	\N	62
851	Dennis	Gabor	1900-06-05	1979-02-08	male	1971	Physics	\N	\N	84
852	Camillo	Golgi	1843-07-07	1926-01-21	male	1906	Medicine	\N	\N	279
853	Jules	Bordet	1870-06-13	1961-04-06	male	1919	Medicine	\N	\N	280
854	Thomas H.	Morgan	1866-09-25	1945-12-04	male	1933	Medicine	\N	\N	83
855	Ernst B.	Chain	1906-06-19	1979-08-12	male	1945	Medicine	\N	\N	20
856	Fritz	Lipmann	1899-06-12	1986-07-24	male	1953	Medicine	\N	\N	11
857	Thomas H.	Weller	1915-06-15	2008-08-23	male	1954	Medicine	\N	\N	281
858	Kofi	Annan	1938-04-08	2018-08-18	male	2001	Peace	\N	\N	\N
859	Sydney	Brenner	1927-01-13	2019-04-05	male	2002	Medicine	\N	\N	282
860	Anthony J.	Leggett	1938-03-26	\N	male	2003	Physics	\N	\N	22
861	Theodor W.	Hänsch	1941-10-30	\N	male	2005	Physics	\N	\N	283
862	Roger D.	Kornberg	1947-04-24	\N	male	2006	Chemistry	\N	\N	55
863	Richard L.M.	Synge	1914-10-28	1994-08-18	male	1952	Chemistry	\N	\N	284
864	Vladimir	Prelog	1906-07-23	1998-01-07	male	1975	Chemistry	\N	\N	82
865	Peter	Mitchell	1920-09-29	1992-04-10	male	1978	Chemistry	\N	\N	285
866	Jerome	Karle	1918-06-18	2013-06-06	male	1985	Chemistry	\N	\N	286
867	John C.	Polanyi	1929-01-23	\N	male	1986	Chemistry	\N	\N	154
868	Robert	Huber	1937-02-20	\N	male	1988	Chemistry	\N	\N	287
869	Rudolph A.	Marcus	1923-07-21	\N	male	1992	Chemistry	\N	\N	83
870	Joseph L.	Goldstein	1940-04-18	\N	male	1985	Medicine	\N	\N	92
871	Sheldon	Glashow	1932-12-05	\N	male	1979	Physics	\N	\N	288
872	Jack	Steinberger	1921-05-25	2020-12-12	male	1988	Physics	\N	\N	65
873	Steven	Chu	1948-02-28	\N	male	1997	Physics	\N	\N	55
874	Gerardus	't Hooft	1946-07-05	\N	male	1999	Physics	\N	\N	95
875	Martinus J.G.	Veltman	1931-06-27	2021-01-04	male	1999	Physics	\N	\N	\N
876	Sir William	Ramsay	1852-10-02	1916-07-23	male	1904	Chemistry	\N	\N	162
877	Peter	Debye	1884-03-24	1966-11-02	male	1936	Chemistry	\N	\N	29
878	Kurt	Alder	1902-07-10	1958-06-20	male	1950	Chemistry	\N	\N	289
879	Henrik	Dam	1895-02-21	1976-04-17	male	1943	Medicine	\N	\N	290
880	Gerty	Cori	1896-08-15	1957-10-26	female	1947	Medicine	\N	\N	200
881	Daniel	Bovet	1907-03-23	1992-04-08	male	1957	Medicine	\N	\N	291
882	Paul A.M.	Dirac	1902-08-08	1984-10-20	male	1933	Physics	\N	\N	74
883	William B.	Shockley	1910-02-13	1989-08-12	male	1956	Physics	\N	\N	292
884	Brian D.	Josephson	1940-01-04	\N	male	1973	Physics	\N	\N	74
885	Elihu	Root	1845-02-15	1937-02-07	male	1912	Peace	\N	\N	\N
886	John	Boyd Orr	1880-09-23	1971-06-25	male	1949	Peace	\N	\N	\N
887	Anwar	al-Sadat	1918-12-25	1981-10-06	male	1978	Peace	\N	\N	\N
888	Adolfo	Pérez Esquivel	1931-11-26	\N	male	1980	Peace	\N	\N	\N
889	United Nations Peacekeeping Forces	\N	\N	\N	org	1988	Peace	\N	\N	\N
890	Luigi	Pirandello	1867-06-28	1936-12-10	male	1934	Literature	\N	\N	\N
891	Roger	Martin du Gard	1881-03-23	1958-08-22	male	1937	Literature	\N	\N	\N
892	Pär	Lagerkvist	1891-05-23	1974-07-11	male	1951	Literature	\N	\N	\N
893	Mikhail	Sholokhov	1905-05-24	1984-02-21	male	1965	Literature	\N	\N	\N
894	Odysseus	Elytis	1911-11-02	1996-03-18	male	1979	Literature	\N	\N	\N
895	Douglass C.	North	1920-11-05	2015-11-23	male	1993	Economics	\N	\N	200
896	John E.	Sulston	1942-03-27	2018-03-06	male	2002	Medicine	\N	\N	293
897	Linda B.	Buck	1947-01-29	\N	female	2004	Medicine	\N	\N	235
898	Jean-Pierre	Sauvage	1944-10-21	\N	male	2016	Chemistry	\N	\N	134
899	Rainer	Weiss	1932-09-29	\N	male	2017	Physics	\N	\N	\N
900	Morten	Meldal	\N	\N	male	2022	Chemistry	\N	\N	294
901	Ronald	Ross	1857-05-13	1932-09-16	male	1902	Medicine	\N	\N	162
902	Frederick G.	Banting	1891-11-14	1941-02-21	male	1923	Medicine	\N	\N	154
903	Ragnar	Granit	1900-10-30	1991-03-12	male	1967	Medicine	\N	\N	100
904	Marshall W.	Nirenberg	1927-04-10	2010-01-15	male	1968	Medicine	\N	\N	53
905	Gustav	Stresemann	1878-05-10	1929-10-03	male	1926	Peace	\N	\N	\N
906	American Friends Service Committee	\N	\N	\N	org	1947	Peace	\N	\N	\N
907	Office of the United Nations High Commissioner for Refugees	\N	1950-12-14	\N	org	1981	Peace	\N	\N	\N
908	Alfonso	García Robles	1911-03-20	1991-09-02	male	1982	Peace	\N	\N	\N
909	Rudolf	Eucken	1846-01-05	1926-09-14	male	1908	Literature	\N	\N	\N
910	Grazia	Deledda	1871-09-27	1936-08-15	female	1926	Literature	\N	\N	\N
911	Ivan	Bunin	1870-10-22	1953-11-08	male	1933	Literature	\N	\N	\N
912	Saint-John	Perse	1887-05-31	1975-09-20	male	1960	Literature	\N	\N	\N
913	Seamus	Heaney	1939-04-13	2013-08-30	male	1995	Literature	\N	\N	\N
914	Lawrence R.	Klein	1920-09-14	2013-10-20	male	1980	Economics	\N	\N	196
915	Harry M.	Markowitz	1927-08-24	2023-06-22	male	1990	Economics	\N	\N	295
916	Paul	Greengard	1925-12-11	2019-04-13	male	2000	Medicine	\N	\N	54
917	Hideki	Shirakawa	1936-08-20	\N	male	2000	Chemistry	\N	\N	296
918	Bengt I.	Samuelsson	1934-05-21	\N	male	1982	Medicine	\N	\N	100
919	Kai M.	Siegbahn	1918-04-20	2007-07-20	male	1981	Physics	\N	\N	14
920	Henry W.	Kendall	1926-12-09	1999-02-15	male	1990	Physics	\N	\N	12
921	Joseph H.	Taylor Jr.	1941-03-29	\N	male	1993	Physics	\N	\N	59
922	Henri	Moissan	1852-09-28	1907-02-20	male	1906	Chemistry	\N	\N	137
923	Paul	Karrer	1889-04-21	1971-06-18	male	1937	Chemistry	\N	\N	79
924	Yuan T.	Lee	1936-11-19	\N	male	1986	Chemistry	\N	\N	25
925	Sidney	Altman	1939-05-07	2022-04-05	male	1989	Chemistry	\N	\N	8
926	Paul J.	Crutzen	1933-12-03	2021-01-28	male	1995	Chemistry	\N	\N	297
927	Lars	Onsager	1903-11-27	1976-10-05	male	1968	Chemistry	\N	\N	8
928	Ernest	Lawrence	1901-08-08	1958-08-27	male	1939	Physics	\N	\N	25
929	Percy W.	Bridgman	1882-04-21	1961-08-20	male	1946	Physics	\N	\N	23
930	Edward V.	Appleton	1892-09-06	1965-04-21	male	1947	Physics	\N	\N	298
931	Owen	Chamberlain	1920-07-10	2006-02-28	male	1959	Physics	\N	\N	25
932	Aleksandr M.	Prokhorov	1916-07-11	2002-01-08	male	1964	Physics	\N	\N	125
933	Leo	Esaki	1925-03-12	\N	male	1973	Physics	\N	\N	299
934	Toshihide	Maskawa	1940-02-07	2021-07-23	male	2008	Physics	\N	\N	300
935	Robert G.	Edwards	1925-09-27	2013-04-10	male	2010	Medicine	\N	\N	74
936	Ralph M.	Steinman	1943-01-14	2011-09-30	male	2011	Medicine	\N	\N	54
937	Saul	Perlmutter	\N	\N	male	2011	Physics	\N	\N	301
938	Sir John B.	Gurdon	1933-10-02	\N	male	2012	Medicine	\N	\N	302
939	Kailash	Satyarthi	1954-01-11	\N	male	2014	Peace	\N	\N	\N
940	William C.	Campbell	1930-06-28	\N	male	2015	Medicine	\N	\N	303
941	Bob	Dylan	1941-05-24	\N	male	2016	Literature	\N	\N	\N
942	Gregg	Semenza	1956-07-12	\N	male	2019	Medicine	\N	\N	215
943	William	Knowles	1917-06-01	2012-06-13	male	2001	Chemistry	\N	\N	\N
944	A. Michael	Spence	\N	\N	male	2001	Economics	\N	\N	55
945	International Atomic Energy Agency	\N	\N	\N	org	2005	Peace	\N	\N	\N
946	John C.	Mather	1946-08-07	\N	male	2006	Physics	\N	\N	304
947	Sir Martin J.	Evans	1941-01-01	\N	male	2007	Medicine	\N	\N	305
948	Albert	Fert	1938-03-07	\N	male	2007	Physics	\N	\N	306
949	Peter	Grünberg	1939-05-18	2018-04-09	male	2007	Physics	\N	\N	307
950	William	Lipscomb	1919-12-09	2011-04-14	male	1976	Chemistry	\N	\N	23
951	Herbert A.	Hauptman	1917-02-14	2011-10-23	male	1985	Chemistry	\N	\N	308
952	George A.	Olah	1927-05-22	2017-03-08	male	1994	Chemistry	\N	\N	309
953	Robert A.	Millikan	1868-03-22	1953-12-19	male	1923	Physics	\N	\N	83
954	Murray	Gell-Mann	1929-09-15	2019-05-24	male	1969	Physics	\N	\N	83
955	David J.	Thouless	1934-09-21	2019-04-06	male	2016	Physics	\N	\N	57
956	Tasuku	Honjo	1942-01-27	\N	male	2018	Medicine	\N	\N	185
957	Didier	Queloz	1966-02-23	\N	male	2019	Physics	\N	\N	224
958	Akira	Yoshino	1948-01-30	\N	male	2019	Chemistry	\N	\N	310
959	Michael	Houghton	\N	\N	male	2020	Medicine	\N	\N	311
960	Maria	Ressa	1963-10-02	\N	female	2021	Peace	\N	\N	\N
961	Dmitry	Muratov	\N	\N	male	2021	Peace	\N	\N	\N
962	Osamu	Shimomura	1928-08-27	2018-10-19	male	2008	Chemistry	\N	\N	312
963	Tawakkol	Karman	1979-02-07	\N	female	2011	Peace	\N	\N	\N
964	Arieh	Warshel	1940-11-20	\N	male	2013	Chemistry	\N	\N	309
965	John	O'Keefe	1939-11-18	\N	male	2014	Medicine	\N	\N	162
966	Shuji	Nakamura	1954-05-22	\N	male	2014	Physics	\N	\N	25
967	Pyotr	Kapitsa	1894-07-09	1984-04-08	male	1978	Physics	\N	\N	153
968	Gerd	Binnig	1947-07-20	\N	male	1986	Physics	\N	\N	17
969	Claude	Cohen-Tannoudji	1933-04-01	\N	male	1997	Physics	\N	\N	126
970	Otto	Wallach	1847-03-27	1931-02-26	male	1910	Chemistry	\N	\N	32
971	Artturi	Virtanen	1895-01-15	1973-11-11	male	1945	Chemistry	\N	\N	313
972	Albrecht	Kossel	1853-09-16	1927-07-05	male	1910	Medicine	\N	\N	143
973	Joshua	Lederberg	1925-05-23	2008-02-02	male	1958	Medicine	\N	\N	155
974	Manfred	Eigen	1927-05-09	2019-02-06	male	1967	Chemistry	\N	\N	314
975	Nikolaas	Tinbergen	1907-04-15	1988-12-21	male	1973	Medicine	\N	\N	20
976	Renato	Dulbecco	1914-02-22	2012-02-19	male	1975	Medicine	\N	\N	315
977	Baruch S.	Blumberg	1925-07-28	2011-04-05	male	1976	Medicine	\N	\N	316
978	Carlos Filipe Ximenes	Belo	1948-02-03	\N	male	1996	Peace	\N	\N	\N
979	Sully	Prudhomme	1839-03-16	1907-09-07	male	1901	Literature	\N	\N	\N
980	Bjørnstjerne	Bjørnson	1832-12-08	1910-04-26	male	1903	Literature	\N	\N	\N
981	Verner	von Heidenstam	1859-07-06	1940-05-20	male	1916	Literature	\N	\N	\N
982	Ernest	Hemingway	1899-07-21	1961-07-02	male	1954	Literature	\N	\N	\N
983	Halldór	Laxness	1902-04-23	1998-02-08	male	1955	Literature	\N	\N	\N
984	Camilo José	Cela	1916-05-11	2002-01-17	male	1989	Literature	\N	\N	\N
985	Wislawa	Szymborska	1923-07-02	2012-02-01	female	1996	Literature	\N	\N	\N
986	Richard	Stone	1913-08-30	1991-12-06	male	1984	Economics	\N	\N	74
987	Daniel L.	McFadden	1937-07-29	\N	male	2000	Economics	\N	\N	25
988	Stanley B.	Prusiner	1942-05-28	\N	male	1997	Medicine	\N	\N	157
989	Leonid	Hurwicz	1917-08-21	2008-06-24	male	2007	Economics	\N	\N	317
\.


--
-- Data for Name: organization; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.organization (id, name, category, address_id) FROM stdin;
1	High Energy Accelerator Research Organization (KEK)		1
2	Stanford University School of Medicine		3
3	Max Planck Institute for Biophysical Chemistry		5
4	Military Medical Academy		7
5	London University		10
6	University of Rochester		13
7	Australian National University		15
8	Yale University		26
9	London University King's College Hospital Medical School		10
10	University of Chicago		30
11	Harvard Medical School		32
12	Massachusetts Institute of Technology (MIT)		34
13	École municipale de physique et de chimie industrielles (Municipal School of Industrial Physics and Chemistry)		25
14	Uppsala University		35
15	Halle University		38
16	Brown University		41
17	IBM Zurich Research Laboratory		42
18	Nancy University		44
19	Stockholm University		37
20	University of Oxford		49
21	MRC Laboratory of Molecular Biology		12
22	University of Illinois		51
23	Harvard University		34
24	Center for Study of Public Choice		60
25	University of California		63
26	Imperial Cancer Research Fund		10
27	Fermi National Accelerator Laboratory		66
28	Toulouse University		68
29	Berlin University		40
30	Jackson Laboratory		72
31	Polarographic Institute of the Czechoslovak Academy of Science		74
32	Goettingen University		5
33	Copenhagen University		77
34	Leiden University		79
35	SUNY Health Science Center		81
36	University of North Carolina		84
37	J.F. Clauser & Assoc.		87
38	Victoria University		89
39	Bell Telephone Laboratories		91
40	Niels Bohr Institute		77
41	Enrico Fermi Institute University of Chicago		30
42	Northwestern University		19
43	Queen's University		97
44	Berne University		99
45	Kiel University		100
46	Instituto de Biologia y Medicina Experimental (Institute for Biology and Experimental Medicine)		105
47	Mayo Clinic		106
48	Columbia University Division Cardio-Pulmonary Laboratory Bellevue Hospital		33
49	Institut Pasteur		25
50	Cornell University		110
51	Kaiser-Wilhelm-Institut (now Max-Planck Institut) für Medizinische Forschung		114
52	National Research Council of Canada		116
53	National Institutes of Health		117
54	Rockefeller University		33
55	Stanford University		3
56	Tufts University		121
57	University of Washington		83
58	Massachusetts Institute of Technology (MIT) Center for Cancer Research		34
59	Princeton University		130
60	Francis Crick Institute		135
61	University of Massachusetts Medical School		137
62	Institute for Advanced Study		130
63	Leipzig University		138
64	Columbia University		33
65	CERN		142
66	Associated Universities Inc.		145
67	Virginia Commonwealth University		148
68	Argonne National Laboratory		149
69	Institut Français du Pétrole		151
70	University of Jerusalem Center for RationalityHebrew		154
71	Royal Institution of Great Britain		10
72	Sheffield University		158
73	Western Reserve University		160
74	University of Cambridge		12
75	University of Maine		164
76	Biozentrum der Universität		168
77	Janelia Research Campus Howard Hughes Medical Institute		170
78	McMaster University		186
79	University of Zurich		188
80	Kaiser-Wilhelm-Institut (now Max-Planck Institut) für Chemie		190
81	Institut du Radium		25
82	Eidgenössische Technische Hochschule (Swiss Federal Institute of Technology)		188
83	California Institute of Technology (Caltech)		88
84	Imperial College		10
85	Marconi Wireless Telegraph Co. Ltd.		10
86	Swedish Gas-Accumulator Co.		207
87	Liverpool University		209
88	Rome University		206
89	University of Tokyo		93
90	George Mason University		60
91	University of Lausanne		216
92	University of Texas Southwestern Medical Center at Dallas		220
93	Göteborg University		235
94	Madrid University		175
95	Utrecht University		237
96	Szeged University		239
97	University of Sussex		113
98	Purdue University		257
99	Université de Strasbourg		261
100	Karolinska Institutet		37
101	Vienna University		50
102	Rockefeller Institute for Medical Research		33
103	Munster University		263
104	Kaiser-Wilhelm-Institut (now Max-Planck-Institut) für Physik		40
105	Sorbonne University Institut Henri Poincaré		25
106	Digital Pathways Inc.		273
107	Long Term Capital Management		283
108	Wellcome Research Laboratories		285
109	Brigham and Women's Hospital		32
110	St. Jude Children's Research Hospital		287
111	Carnegie Institution of Washington		289
112	Bell Laboratories		91
113	Université Libre de Bruxelles		295
114	Technion - Israel Institute of Technology		298
115	Du Pont		302
116	Aarhus University		306
117	Lomonosov Moscow State University		128
118	École Polytechnique		25
119	Würzburg University		139
120	Edinburgh University		311
121	Weizmann Institute of Science		229
122	Nagoya University		2
123	China Academy of Traditional Chinese Medicine		317
124	The Scripps Research Institute		147
125	P.N. Lebedev Physical Institute		128
126	Collège de France		25
127	National Institute for Medical Research		10
128	Parker Institute for Cancer Immunotherapy		327
129	Groningen University		345
130	Kaiser-Wilhelm-Institut (now Fritz-Haber-Institut) für physikalische Chemie und Electrochemie		190
131	Institute of Technology		352
132	Harvard University Biological Laboratories		34
133	Basel Institute for Immunology		168
134	University of Strasbourg		261
135	University of Edinburgh		311
136	Kitasato University		93
137	Sorbonne University		25
138	University of Missouri		372
139	Binghamton University State University of New York		33
140	Sapienza University of Rome		206
141	Max-Planck-Institut für Kohlenforschung		375
142	Technische Hochschule (Institute of Technology)		140
143	University of Heidelberg		114
144	Central Research Laboratories EMI		10
145	New England Biolabs		386
146	Regulation of Retroviral Infections Unit Virology Department Institut Pasteur		25
147	University of Manchester		89
148	Saint Louis University		398
149	Scripps Research		147
150	University of Maryland Department of Economics and School of Public Policy		404
151	Institute of Cell Biology of the C.N.R.		206
152	Greifswald University		411
153	Academy of Sciences		128
154	University of Toronto		367
155	University of Wisconsin		90
156	Rice University		416
157	University of California School of Medicine		198
158	University of Colorado JILA		428
159	The Netherlands School of Economics		349
160	German Cancer Research Center		114
161	Strasbourg University		261
162	University College		10
163	University of Grenoble		449
164	General Electric Company		451
165	Stanford Linear Accelerator Center		3
166	Université de Paris Laboratoire Immuno-Hématologie		25
167	University of Nottingham School of Physics and Astronomy		454
168	Graz University		457
169	Trinity College		12
170	Institute of Physical Chemistry		12
171	Technical University		140
172	University of Chicago Ben May Laboratory for Cancer Research		30
173	Max-Planck-Institut für medizinische Forschung		114
174	Max Planck Institute for Extraterrestrial Physics		474
175	École Normale Supérieure		25
176	Zoologisches Institut der Universität München		140
177	Max-Planck-Institut für Biophysikalische Chemie		5
178	Stockholm School of Economics		37
179	Kaiser-Wilhelm-Institut (now Max-Planck-Institut) für Biologie		190
180	École Nationale Supérieur des Mines de Paris		25
181	New York University		33
182	National Institute of Standards and Technology		497
183	Munich University		140
184	University of Oslo		126
185	Kyoto University		476
186	Amsterdam University		346
187	Bureau International des Poids et Mesures (International Bureau of Weights and Measures)		509
188	Shimadzu Corp.		476
189	University of Groningen		345
190	University of Waterloo		534
191	University of Freiburg		536
192	Université Louis Pasteur		261
193	University of British Columbia		539
194	Frankfurt-on-the-Main University		155
195	Atomic Energy Research Establishment		543
196	University of Pennsylvania		102
197	Veterans Administration Hospital		546
198	University of Zurich Institute of Experimental Immunology		188
199	Institute for Infectious Diseases		40
200	Washington University		398
201	Mainz University		550
202	Max-Planck-Institut für Festkörperforschung		473
299	IBM Thomas J. Watson Research Center		886
203	Kaiser-Wilhelm-Institut (now Max-Planck-Institut) für Biochemie		190
204	Norwegian University of Science and Technology (NTNU)		565
205	University of Bonn		572
206	Finsen Medical Light Institute		77
207	Royal Institute of Technology		37
208	Howard Hughes Medical Institute		203
209	A.F. Ioffe Physico-Technical Institute		7
210	Vanderbilt University		589
211	Konrad-Lorenz-Institut der Österreichischen Akademie der Wissen­schaften Forschungsstelle für Ethologie		592
212	Yale University School of Medicine		26
213	NHMRC Helicobacter pylori Research Laboratory QEII Medical Centre		595
214	Fritz-Haber-Institut der Max-Planck-Gesellschaft		40
215	Johns Hopkins University		299
216	Meijo University		2
217	Brandeis University		610
218	Institut d’Optique Graduate School – Université Paris-Saclay		25
219	Johns Hopkins University School of Medicine		299
220	All Souls College		49
221	Landwirtschaftliche Hochschule (Agricultural College)		40
222	Indiana University		620
223	Hokkaido University		621
224	University of Geneva		142
225	University of Texas		115
226	University of Vienna		50
227	Laboratories of the Division of Medicine and Public Health Rockefeller Foundation		33
228	Karolinska Institutet Nobel Medical Institute		37
229	Walter and Eliza Hall Institute for Medical Research		16
230	Nordita		77
231	University of Oxford Royal Society		49
232	Carnegie Mellon University		107
233	The Salk Institute		242
234	Birmingham University		615
235	Fred Hutchinson Cancer Research Center		83
236	University of Freiburg im Breisgau		536
237	London School of Economics and Political Science		10
238	Toulouse School of Economics (TSE)		68
239	Cold Spring Harbor Laboratory		662
240	Vanderbilt University School of Medicine		589
241	National Institute of Environmental Health Sciences		285
242	Innsbruck University		666
243	Carnegie Institute of Technology		107
244	International Centre for Theoretical Physics		671
245	Institute for Chemical Physics of the Academy of Sciences of the USSR		128
246	Max-Planck-Institut für Biophysik		155
247	Basel University		168
248	Bristol University		11
249	Marburg University		708
250	New York University College of Medicine		33
251	Max-Planck-Institut für Zellchemie		140
252	Rheinische Friedrich-Wilhelms-Universität		572
253	Tokyo Institute of Technology		93
254	Max Planck Unit for the Science of Pathogens		40
255	Max Planck Institute for Evolutionary Anthropology		138
256	Laboratorium der Farben-Fabriken J.R. Geigy A.G. (Laboratory of the J.R. Geigy Dye-Factory Co.)		168
257	Rutgers University		729
258	Tokyo University of Education		93
259	École Supérieure de Physique et Chimie		25
260	NYU Stern School of Business		33
261	University of Colorado		428
262	Texas Instruments		220
263	Max Planck Institute for Meteorology		39
264	The Brookings Institution		145
265	Standard Telecommunication Laboratories		760
266	University of California Kavli Institute for Theoretical Physics		63
267	Calcutta University		334
268	Institute for Biochemical Research		105
269	Ghent University		752
270	University of Lisbon		772
271	Arizona State University		780
272	University of Utah		783
273	Université Catholique de Louvain		797
274	World Foundation for AIDS Research and Prevention		25
275	University of Delaware		203
276	The Wellcome Research Laboratories		815
277	Max-Planck-Institut für Entwicklungsbiologie		818
278	University of Texas Medical School at Houston		416
279	Pavia University		825
280	Brussels University		295
281	Research Division of Infectious Diseases Children's Medical Center		32
282	The Molecular Sciences Institute		212
283	Max-Planck-Institut für Quantenoptik		474
284	Rowett Research Institute		835
285	Glynn Research Laboratories		837
286	US Naval Research Laboratory		145
287	Max-Planck-Institut für Biochemie		840
288	Harvard University Lyman Laboratory		34
289	Cologne University		380
290	Polytechnic Institute		77
291	Istituto Superiore di Sanità (Chief Institute of Public Health)		206
292	Semiconductor Laboratory of Beckman Instruments Inc.		273
293	The Wellcome Trust Sanger Institute		12
294	University of Copenhagen		77
295	City University of New York		33
296	University of Tsukuba		1
297	Max-Planck-Institut für Chemie		550
298	Department of Scientific and Industrial Research		10
300	Kyoto Sangyo University		476
301	Lawrence Berkeley National Laboratory		212
302	Gurdon Institute		12
303	Drew University		891
304	NASA Goddard Space Flight Center		897
305	Cardiff University		850
306	Universit&eacute; Paris-Sud		321
307	Forschungszentrum J&uuml;lich		900
308	The Medical Foundation of Buffalo		508
309	University of Southern California		198
310	Asahi Kasei Corporation		93
311	University of Alberta		906
312	Marine Biological Laboratory (MBL)		240
313	University of Helsinki		23
314	Max-Planck-Institut für Physikalische Chemie		5
315	Imperial Cancer Research Fund Laboratory		10
316	The Institute for Cancer Research		102
317	University of Minnesota		928
\.


--
-- Name: __diesel_schema_migrations __diesel_schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.__diesel_schema_migrations
    ADD CONSTRAINT __diesel_schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: address idx_16447_address_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT idx_16447_address_pkey PRIMARY KEY (id);


--
-- Name: organization idx_16452_organization_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organization
    ADD CONSTRAINT idx_16452_organization_pkey PRIMARY KEY (id);


--
-- Name: nobelwinner idx_16457_nobelwinner_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nobelwinner
    ADD CONSTRAINT idx_16457_nobelwinner_pkey PRIMARY KEY (id);


--
-- Name: address address_person_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_person_id_fkey FOREIGN KEY (person_id) REFERENCES public.nobelwinner(id);


--
-- Name: nobelwinner nobelwinner_org_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.nobelwinner
    ADD CONSTRAINT nobelwinner_org_id_fkey FOREIGN KEY (org_id) REFERENCES public.organization(id);


--
-- Name: organization organization_address_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.organization
    ADD CONSTRAINT organization_address_id_fkey FOREIGN KEY (address_id) REFERENCES public.address(id);


--
-- PostgreSQL database dump complete
--

