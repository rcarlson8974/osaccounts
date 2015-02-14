<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<%@ page import="grails.util.Environment" %>

<head>

    <!-- Application info
    app version        <g:meta name="app.version"/>
    grails environment ${Environment.current}
    -->

    <!-- Build info
    build.date         <g:meta name="build.date"/>
    scm.version        <g:meta name="scm.version"/>
    BUILD_NUMBER       <g:meta name="environment.BUILD_NUMBER"/>
    BUILD_ID           <g:meta name="environment.BUILD_ID"/>
    BUILD_TAG          <g:meta name="environment.BUILD_TAG"/>
    GIT_BRANCH         <g:meta name="environment.GIT_BRANCH"/>
    GIT_COMMIT         <g:meta name="environment.GIT_COMMIT"/>
    grails version     <g:meta name="app.grails.version"/>
    -->


    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><g:layoutTitle default="OS Accounts"/></title>

    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
    <asset:stylesheet href="application.css"/>
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'application.css')}" type="text/css">--}%
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'errors.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
    %{--<link rel="stylesheet" href="${resource(dir: 'css', file: 'osadmin.css')}" type="text/css">--}%

    <g:layoutHead/>
    %{--<g:javascript library="application"/>--}%
    <r:layoutResources/>

    %{--<link rel='stylesheet' href="${resource(dir: 'css', file: 'bootstrap_overrides.css')}" type="text/css"/>--}%
    %{--<link rel='stylesheet' href="${resource(dir: 'css', file: 'datatables_overrides.css')}" type="text/css"/>--}%

</head>

<body class="container">

<g:layoutBody/>

<g:set var="today" value="${new Date()}"/>
<g:set var="year" value="${new Date()[Calendar.YEAR]}"/>
<div class="row-fluid rs-footer pad-top-20 pad-bottom-10">
    <div class="span12">
        <p class="pad-top-20">© ${year} Otsego Solutions, LLC. All rights reserved.</p>
    </div>
</div>

<r:layoutResources/>

<asset:javascript src="application.js"/>
</body>
</html>
