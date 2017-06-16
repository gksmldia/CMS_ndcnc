<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header class="headerbar">
	<nav id="menubar_topnav">
		<ul id="menubar_topul">
			<c:if test="${member eq null}">
				<li id="memberJoin_topli" class="navigatiohn_topli"><a href="/career_srhan/A0401" class="topli_headerAtag">로그인</a></li>
				<li id="memberJoin_topli" class="navigatiohn_topli"><a href="/career_srhan/member/A0101" class="topli_headerAtag">회원가입</a></li>
			</c:if>
			<c:if test="${member ne null}">
				<li class="navigatiohn_topli"><a href="/career_srhan/login/logout" class="topli_headerAtag">로그아웃</a></li>
				<li class="navigatiohn_topli">
					<c:if test="${member.m_rank eq 'M'}"><span class="topli_headerAtag">Master</span></c:if>
					<c:if test="${member.m_rank eq 'A'}"><span class="topli_headerAtag">Admin</span></c:if>
					<c:if test="${member.m_rank eq 'G'}"><span class="topli_headerAtag">Member</span></c:if>
				</li>	
			</c:if>	
		</ul>
	</nav>	
	<div id="header_bottom">
		<div id="headerLogo">
			<div id="headerLogoText">
				<a href="/career_srhan/A0401">
					<img alt="" src="/career_srhan/resources/image/NDcnc.png" id="logoimg">
				</a>
			</div>
		</div>
		<nav id="menuBar_nav">
			<ul id="menubar_ul">
				<c:if test="${member eq null}">
					<li class="navigatiohn_li">문의</li>
					<li class="navigatiohn_li">소식/알림</li>
					<li class="navigatiohn_li">이용안내</li>		
				</c:if>		
				<c:if test="${member ne null}">	
					<li class="navigatiohn_li">문의</li>
					<li class="navigatiohn_li">소식/알림</li>						
					<c:choose>
						<c:when test="${member.m_rank eq 'M'}">
							<li class="navigatiohn_li"><a href="/career_srhan/admin/A0601" class="headerAtag">경력 검색</a></li>
							<li class="navigatiohn_li"><a href="/career_srhan/master/A0501" class="headerAtag">회원 승인</a></li>
						</c:when>
						<c:when test="${member.m_rank eq 'A'}">
							<li class="navigatiohn_li">이용안내</li>
							<li class="navigatiohn_li"><a href="/career_srhan/admin/A0601" class="headerAtag">경력 검색</a></li>
						</c:when>
						<c:when test="${member.m_rank eq 'G'}">
							<li class="navigatiohn_li"><a href="/career_srhan/admin/A0603?m_no=${member.m_no}" class="headerAtag">경력 정보</a></li>
							<li class="navigatiohn_li"><a href="/career_srhan/member/A0301?m_id=${member.m_id}" class="headerAtag">경력 등록</a></li>
						</c:when>
					</c:choose>
				</c:if>
				
			</ul>
		</nav>
	</div>
</header>
