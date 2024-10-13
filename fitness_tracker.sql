--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: _account; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._account (
    accountid character varying(1) DEFAULT NULL::character varying,
    accountname character varying(1) DEFAULT NULL::character varying,
    industry character varying(1) DEFAULT NULL::character varying,
    accounttype character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    preferredcommunicationchannel character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying,
    lastmodifieddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._account OWNER TO rebasedata;

--
-- Name: _activity; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._activity (
    activityid character varying(1) DEFAULT NULL::character varying,
    goalid character varying(1) DEFAULT NULL::character varying,
    eventid character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    intensitylevel character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying,
    lastmodifieddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._activity OWNER TO rebasedata;

--
-- Name: _case; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._case (
    caseid character varying(1) DEFAULT NULL::character varying,
    accountid character varying(1) DEFAULT NULL::character varying,
    contactid character varying(1) DEFAULT NULL::character varying,
    casetype character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    priority character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying,
    lastmodifieddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._case OWNER TO rebasedata;

--
-- Name: _contact; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._contact (
    contactid character varying(1) DEFAULT NULL::character varying,
    accountid character varying(1) DEFAULT NULL::character varying,
    firstname character varying(1) DEFAULT NULL::character varying,
    lastname character varying(1) DEFAULT NULL::character varying,
    email character varying(1) DEFAULT NULL::character varying,
    phone character varying(1) DEFAULT NULL::character varying,
    preferredlanguage character varying(1) DEFAULT NULL::character varying,
    industry character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying,
    lastmodifieddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._contact OWNER TO rebasedata;

--
-- Name: _customercase; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._customercase (
    caseid character varying(1) DEFAULT NULL::character varying,
    accountid character varying(1) DEFAULT NULL::character varying,
    subject character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    priority character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying,
    lastmodifieddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._customercase OWNER TO rebasedata;

--
-- Name: _customnotification; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._customnotification (
    notificationid character varying(1) DEFAULT NULL::character varying,
    userid character varying(1) DEFAULT NULL::character varying,
    goalid character varying(1) DEFAULT NULL::character varying,
    message character varying(1) DEFAULT NULL::character varying,
    isread character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._customnotification OWNER TO rebasedata;

--
-- Name: _event; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._event (
    eventid character varying(1) DEFAULT NULL::character varying,
    title character varying(1) DEFAULT NULL::character varying,
    startdate character varying(1) DEFAULT NULL::character varying,
    enddate character varying(1) DEFAULT NULL::character varying,
    description character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying,
    lastmodifieddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._event OWNER TO rebasedata;

--
-- Name: _feedback; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._feedback (
    feedbackid character varying(1) DEFAULT NULL::character varying,
    userid character varying(1) DEFAULT NULL::character varying,
    goalid character varying(1) DEFAULT NULL::character varying,
    comments character varying(1) DEFAULT NULL::character varying,
    rating character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._feedback OWNER TO rebasedata;

--
-- Name: _goal; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._goal (
    goalid character varying(1) DEFAULT NULL::character varying,
    accountid character varying(1) DEFAULT NULL::character varying,
    userid character varying(1) DEFAULT NULL::character varying,
    goaltype character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    targetdate character varying(1) DEFAULT NULL::character varying,
    description character varying(1) DEFAULT NULL::character varying,
    priority character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying,
    lastmodifieddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._goal OWNER TO rebasedata;

--
-- Name: _goal_service; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._goal_service (
    goalid character varying(1) DEFAULT NULL::character varying,
    serviceid character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._goal_service OWNER TO rebasedata;

--
-- Name: _healthmetric; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._healthmetric (
    metricid character varying(1) DEFAULT NULL::character varying,
    userid character varying(1) DEFAULT NULL::character varying,
    date character varying(1) DEFAULT NULL::character varying,
    weight character varying(1) DEFAULT NULL::character varying,
    height character varying(1) DEFAULT NULL::character varying,
    bloodpressure character varying(1) DEFAULT NULL::character varying,
    heartrate character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._healthmetric OWNER TO rebasedata;

--
-- Name: _interaction; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._interaction (
    interactionid character varying(1) DEFAULT NULL::character varying,
    userid character varying(1) DEFAULT NULL::character varying,
    contactid character varying(1) DEFAULT NULL::character varying,
    interactiondate character varying(1) DEFAULT NULL::character varying,
    notes character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._interaction OWNER TO rebasedata;

--
-- Name: _opportunity; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._opportunity (
    opportunityid character varying(1) DEFAULT NULL::character varying,
    accountid character varying(1) DEFAULT NULL::character varying,
    contactid character varying(1) DEFAULT NULL::character varying,
    opportunityname character varying(1) DEFAULT NULL::character varying,
    opportunityamount character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    closedate character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying,
    lastmodifieddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._opportunity OWNER TO rebasedata;

--
-- Name: _progresstracking; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._progresstracking (
    progressid character varying(1) DEFAULT NULL::character varying,
    goalid character varying(1) DEFAULT NULL::character varying,
    progressdate character varying(1) DEFAULT NULL::character varying,
    progressdescription character varying(1) DEFAULT NULL::character varying,
    status character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._progresstracking OWNER TO rebasedata;

--
-- Name: _reminder; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._reminder (
    reminderid character varying(1) DEFAULT NULL::character varying,
    goalid character varying(1) DEFAULT NULL::character varying,
    reminderdate character varying(1) DEFAULT NULL::character varying,
    message character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying,
    lastmodifieddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._reminder OWNER TO rebasedata;

--
-- Name: _service; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._service (
    serviceid character varying(1) DEFAULT NULL::character varying,
    name character varying(1) DEFAULT NULL::character varying,
    description character varying(1) DEFAULT NULL::character varying,
    type character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying,
    lastmodifieddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._service OWNER TO rebasedata;

--
-- Name: _session; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._session (
    sessionid character varying(1) DEFAULT NULL::character varying,
    userid character varying(1) DEFAULT NULL::character varying,
    logintime character varying(1) DEFAULT NULL::character varying,
    logouttime character varying(1) DEFAULT NULL::character varying,
    ipaddress character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._session OWNER TO rebasedata;

--
-- Name: _user; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._user (
    userid character varying(1) DEFAULT NULL::character varying,
    username character varying(1) DEFAULT NULL::character varying,
    email character varying(1) DEFAULT NULL::character varying,
    password character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying,
    lastmodifieddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._user OWNER TO rebasedata;

--
-- Name: _user_activity; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._user_activity (
    userid character varying(1) DEFAULT NULL::character varying,
    activityid character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._user_activity OWNER TO rebasedata;

--
-- Name: _user_event; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._user_event (
    userid character varying(1) DEFAULT NULL::character varying,
    eventid character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._user_event OWNER TO rebasedata;

--
-- Name: _userservice; Type: TABLE; Schema: public; Owner: rebasedata
--

CREATE TABLE public._userservice (
    userserviceid character varying(1) DEFAULT NULL::character varying,
    userid character varying(1) DEFAULT NULL::character varying,
    serviceid character varying(1) DEFAULT NULL::character varying,
    createddate character varying(1) DEFAULT NULL::character varying
);


ALTER TABLE public._userservice OWNER TO rebasedata;

--
-- Data for Name: _account; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._account (accountid, accountname, industry, accounttype, status, preferredcommunicationchannel, createddate, lastmodifieddate) FROM stdin;
\.


--
-- Data for Name: _activity; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._activity (activityid, goalid, eventid, status, intensitylevel, createddate, lastmodifieddate) FROM stdin;
\.


--
-- Data for Name: _case; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._case (caseid, accountid, contactid, casetype, status, priority, createddate, lastmodifieddate) FROM stdin;
\.


--
-- Data for Name: _contact; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._contact (contactid, accountid, firstname, lastname, email, phone, preferredlanguage, industry, createddate, lastmodifieddate) FROM stdin;
\.


--
-- Data for Name: _customercase; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._customercase (caseid, accountid, subject, status, priority, createddate, lastmodifieddate) FROM stdin;
\.


--
-- Data for Name: _customnotification; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._customnotification (notificationid, userid, goalid, message, isread, createddate) FROM stdin;
\.


--
-- Data for Name: _event; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._event (eventid, title, startdate, enddate, description, createddate, lastmodifieddate) FROM stdin;
\.


--
-- Data for Name: _feedback; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._feedback (feedbackid, userid, goalid, comments, rating, createddate) FROM stdin;
\.


--
-- Data for Name: _goal; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._goal (goalid, accountid, userid, goaltype, status, targetdate, description, priority, createddate, lastmodifieddate) FROM stdin;
\.


--
-- Data for Name: _goal_service; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._goal_service (goalid, serviceid) FROM stdin;
\.


--
-- Data for Name: _healthmetric; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._healthmetric (metricid, userid, date, weight, height, bloodpressure, heartrate, createddate) FROM stdin;
\.


--
-- Data for Name: _interaction; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._interaction (interactionid, userid, contactid, interactiondate, notes) FROM stdin;
\.


--
-- Data for Name: _opportunity; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._opportunity (opportunityid, accountid, contactid, opportunityname, opportunityamount, status, closedate, createddate, lastmodifieddate) FROM stdin;
\.


--
-- Data for Name: _progresstracking; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._progresstracking (progressid, goalid, progressdate, progressdescription, status, createddate) FROM stdin;
\.


--
-- Data for Name: _reminder; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._reminder (reminderid, goalid, reminderdate, message, createddate, lastmodifieddate) FROM stdin;
\.


--
-- Data for Name: _service; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._service (serviceid, name, description, type, createddate, lastmodifieddate) FROM stdin;
\.


--
-- Data for Name: _session; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._session (sessionid, userid, logintime, logouttime, ipaddress) FROM stdin;
\.


--
-- Data for Name: _user; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._user (userid, username, email, password, createddate, lastmodifieddate) FROM stdin;
\.


--
-- Data for Name: _user_activity; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._user_activity (userid, activityid) FROM stdin;
\.


--
-- Data for Name: _user_event; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._user_event (userid, eventid) FROM stdin;
\.


--
-- Data for Name: _userservice; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

COPY public._userservice (userserviceid, userid, serviceid, createddate) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

