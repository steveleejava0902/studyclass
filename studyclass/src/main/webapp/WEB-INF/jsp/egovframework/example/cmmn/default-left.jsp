<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="sidebar" data-color="yellow" data-image="images/bootstrap/full-screen-image-12.jpg">
    <!--
        Tip 1: you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        Tip 2: you can also add an image using data-image tag
    -->
    <div class="logo">
        <a href="https://cafe.naver.com/steveleejava" class="logo-text">
            STEVELEE JAVA
        </a>
    </div>
	<div class="logo logo-mini">
		<a href="#" class="logo-text">
			Ct
		</a>
	</div>
   	<div class="sidebar-wrapper">
        <div class="user">
            <div class="photo">
                <img src="images/bootstrap/stevelee3.png" />
            </div>

		</div>
        <ul class="nav">
            <li class="active">
                <a href="main.do">
                    <i class="pe-7s-graph"></i>
                    <p>HOME</p>
                </a>
            </li>
        </ul>
   	</div>
</div>