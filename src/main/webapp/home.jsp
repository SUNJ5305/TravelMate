<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
/* 폰트 설정 */
@font-face {
    font-family: 'TmonMonsori';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/TmonMonsori.woff') format('woff');
    font-weight: normal;
    font-style: normal; 
}
@font-face {
    font-family: 'GmarketSansMedium';
    src: url('https://fastly.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
* {
    text-decoration: none;
    font-family: 'NanumSquare', sans-serif; /* 기본 폰트 설정 */
}
body {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    overflow-x: hidden; /* 수평 스크롤바 제거 */
}

/* 헤더 스타일 설정 */
#header {
    display: flex;
    flex-direction: column;
    padding: 20px 40px;
    background-color: transparent;
    font-family: 'Inter', sans-serif;
    position: absolute;
    width: 100%;
    z-index: 1000;
    color: white;
}
#header .top {
    display: flex;
    justify-content: space-between;
    align-items: center;
}
#header .logo img {
    position: absolute;
    top: -9.4px;
    width: auto;
    height: 100px; /* 원하는 높이로 설정 */
}
#header .logo + h2 {
    margin-left: 145px; /* 로고와 텍스트 사이의 간격 조절 */
}
.logo-text {
    font-family: 'GmarketSansMedium';
}
nav {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
}
nav ul {
    list-style: none;
    display: flex;
    gap: 20px;
    padding: 0;
    margin: 0;
}
nav .center-menu {
    display: flex;
    font-size: 17px;
    justify-content: center;
    gap: 20px;
    margin-left: auto; /* 중앙 정렬 */
}
nav .right-menu {
    display: flex;
    justify-content: flex-end;
    gap: 20px;
    font-size: 14px;
    margin-left: auto; /* 오른쪽 정렬 */
}
nav .right-menu li a {
    font-family: 'GmarketSansMedium';
    text-decoration: none;
    color: #aaaa;
    transition: color 0.3s;
}
nav .center-menu li a {
    font-family: 'GmarketSansMedium';
    text-decoration: none;
    color: #fff;
    transition: color 0.3s;
}
nav .right-menu li a:hover {
    color: #fff;
}
nav hr {
    position: absolute;
    left: 0;
    width: 100%;
    margin: 0;
    border: 0;
    height: 5px;
    background: white;
}
.logo a {
    text-decoration: none;
    color: white;
}

/* 메인 배너 스타일 설정 */
.main-banner {
    width: 100%;
    height: 100vh;
    position: relative;
    color: white;
    display: flex;
    flex-direction: column;
    justify-content: flex-end;
    padding: 20px;
    background-size: cover;
    background-position: center;
    transition: background-image 1s ease-in-out;
}
.main-banner .banner-text, .main-banner {
    font-family: 'TmonMonsori';
    letter-spacing: 0.5px;
    font-size: 48px;
    align-self: flex-start;
    opacity: 0;
    transform: translateX(-100%);
    animation: slide-in 1s forwards;
}
.banner-text {
    position: absolute;
    bottom: 150px;
    left: 140px;
}
.sub-text {
    position: absolute;
    bottom: 105px;
    left: 140px;
}
.main-banner .sub-text {
    font-family: 'GmarketSansMedium';
    font-size: 16px;
    padding: 5px 0;
    animation: slide-in 1s forwards 0.5s;
}
@keyframes slide-in {
    to {
        opacity: 1;
        transform: translateX(0);
    }
}
.main-banner .call-to-action {
    font-size: 28px;
    position: absolute;
    bottom: 105px;
    right: 200px;
    text-align: left;
    display: flex;
    align-items: center;
    gap: 10px;
}
.main-banner .call-to-action a {
    font-family: 'GmarketSansMedium';
    text-decoration: none;
    font-weight: 400;
    color: #fff;
    margin-right: 10px;
    display: inline-block;
}
.main-banner .call-to-action hr {
    border: 0;
    height: 1px;
    background: white;
    width: 100px;
    margin: 0;
    display: inline-block;
    vertical-align: middle;
}
.main-banner .call-to-action .arrow {
    display: inline-block;
    margin-left: 10px;
    vertical-align: middle;
}
.banner-nav {
    position: absolute;
    bottom: 20px;
    display: flex;
    gap: 5px;
    left: 50%;
    transform: translateX(-50%);
}
.banner-nav .dot {
    width: 10px;
    height: 10px;
    border-radius: 50%;
    background: white;
    cursor: pointer;
    transition: background 0.3s;
}
.banner-nav .dot.active {
    background: #007BFF;
}
@keyframes slide {
    from {
        opacity: 0;
        transform: translateX(100%);
    }
    to {
        opacity: 1;
        transform: translateX(0);
    }
}

/* 푸터 스타일 설정 */
#footer {
    background: #f8f8f8;
    padding: 40px 20px;
    text-align: left;
    border-top: 1px solid #e7e7e7;
}
.footer-content {
    max-width: 1200px;
    margin: 0 auto;
    display: flex;
    flex-wrap: wrap; /* 가로형 정렬 */
    gap: 20px; /* 섹션 간격 */
}
.footer-section {
    flex: 1;
    min-width: 200px;
    margin: 10px 0;
    text-align: left; /* 왼쪽 정렬 */
}
.footer-section h3 {
    font-family: 'TmonMonsori';
    margin-bottom: 10px;
    font-size: 18px; /* 폰트 크기 조정 */
}
.footer-section p, .footer-section a {
    font-family: 'GmarketSansMedium';
    color: #333;
    text-decoration: none;
    margin: 5px 0;
    font-size: 14px; /* 폰트 크기 조정 */
}
.social-icons {
    display: flex;
    align-items: center;
    margin-top: 10px;
}
.social-icons a {
    display: flex;
    align-items: center;
    color: #333;
    text-decoration: none;
    margin-right: 10px;
    font-size: 14px; /* 폰트 크기 조정 */
}
.social-icons img {
    width: 20px;
    margin-right: 5px;
}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<!-- Google Fonts Link -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <!-- 헤더 시작 -->
    <div id="header">
        <div class="top">
            <h2 class="logo">
                <a href="${pageContext.request.contextPath}/home">
                    <img src="<%=request.getContextPath()%>/img/logo/Logo.png" alt="TravelMate Logo">
                </a>
            </h2>
            <h2 class="logo-text">TravelMate</h2> <!-- 주석: TravelMate 위치를 조정하는 부분입니다 -->
            <nav>
                <ul class="center-menu">
                    <li><a href="#">다양한축제</a></li>
                    <li><a href="#">항공</a></li>
                    <li><a href="#">숙박</a></li>
                    <li><a href="#">트레블패스</a></li>
                    <li><a href="#">이벤트</a></li>
                    <li><a href="#">여행문의</a></li>
                </ul>
                <ul class="right-menu">
                    <li><a href="#">고객센터</a></li>
                    <li><a href="#">예약 확인</a></li>
                    <li><a href="${pageContext.request.contextPath}/user/join">회원가입</a></li>
                    <c:if test="${sessionScope.userId == null}">
                        <li><a href="${pageContext.request.contextPath}/user/login">로그인</a></li>
                    </c:if>
                    <c:if test="${sessionScope.userId != null}">
                        <li><a href="${pageContext.request.contextPath}/user/joinInfo">${userId}님</a></li>
                    </c:if>
                    <hr style="width:100%; margin-top:40px; height:1px;">
                </ul>
            </nav>
            <hr class="nav-separator">
        </div>
    </div>
    <!-- 헤더 끝 -->

    <!-- 메인 배너 시작 -->
    <div class="main-banner" id="main-banner" style="background-image: url('<%=request.getContextPath()%>/img/RandingPage/banner.png')">
        <div class="banner-text">
            어떤 자유 여행도!<br>Simple 하고! Fun 하게!
        </div>
        <div class="sub-text">
            트레블메이트와 함께 여행을 만끽하세요!
        </div>
        <div class="call-to-action">
            <a href="tra/traindex">어디로 떠나세요?</a>
            <hr style="width:250px;">
            <img src="<%=request.getContextPath()%>/img/RandingPage/arrow.png" style="transform: rotate(180deg);" alt="Arrow">
        </div>
        <div class="banner-nav" id="banner-nav">
            <div class="dot" data-index="0"></div>
            <div class="dot" data-index="1"></div>
            <div class="dot" data-index="2"></div>
            <div class="dot" data-index="3"></div>
        </div>
    </div>
    <!-- 메인 배너 끝 -->

    <!-- 푸터 시작 -->
    <div id="footer">
        <div class="footer-content">
            <div class="footer-section">
                <h3>Address & Contact</h3>
                <p>대표번호: 1588-0000</p>
                <p>서울특별시 강남구 역삼동 819-10 세경빌딩 3층</p>
            </div>
            <div class="footer-section">
                <h3>트레블메이트 Information</h3>
                <p>(주)트레블메이트 대표: 김영훈</p>
                <p>서울특별시 강남구 역삼동 819-10 세경빌딩 3층</p>
                <p>본사 사업자등록번호: 104-81-000000</p>
                <p>관광사업자등록번호: 제1999-000호</p>
                <p>통신판매업신고번호: 제2024-0077</p>
            </div>
            <div class="footer-section">
                <h3>Follow Us</h3>
                <p>여행자 배상책임보험 20억원 가입</p>
                <p>일반여행 보증보험 15억원 가입</p>
                <p>copyrights 2022. all rights reserved by (주)트레블메이트</p>
                <div class="social-icons">
                    <a href="#"><img src="<%=request.getContextPath()%>/img/footer/Frame.png" alt="Facebook">Facebook</a>
                    <a href="#"><img src="<%=request.getContextPath()%>/img/footer/Frame-1.png" alt="Instagram">Instagram</a>
                    <a href="#"><img src="<%=request.getContextPath()%>/img/footer/Frame-2.png" alt="YouTube">YouTube</a>
                    <a href="#"><img src="<%=request.getContextPath()%>/img/footer/Frame-3.png" alt="Kakao">Kakao</a>
                    <a href="#"><img src="<%=request.getContextPath()%>/img/footer/Frame-4.png" alt="Blog">Blog</a>
                </div>
            </div>
        </div>
    </div>
    <!-- 푸터 끝 -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"></script>

    <!-- 배너 슬라이드 스크립트 시작 -->
    <script>
    document.addEventListener('DOMContentLoaded', () => {
        const contextPath = '<%= request.getContextPath() %>';

        const banners = [
            {
                image: 'url("' + contextPath + '/img/RandingPage/banner.png")',
                text: '어떤 자유 여행도!<br>Simple 하고! Fun 하게!',
                subText: '트레블메이트와 함께 여행을 만끽하세요!'
            },
            {
                image: 'url("' + contextPath + '/img/RandingPage/banner2.png")',
                text: '모든 순간을 기억에 남게!',
                subText: '여행은 추억을 만드는 시간입니다.'
            },
            {
                image: 'url("' + contextPath + '/img/RandingPage/banner3.png")',
                text: '새로운 모험을 시작하세요!',
                subText: '여행은 세상을 탐험하는 최고의 방법입니다.'
            },
            {
                image: 'url("' + contextPath + '/img/RandingPage/banner4.png")',
                text: '다양한 문화를 경험하세요!',
                subText: '세상의 다양한 문화를 직접 경험해보세요.'
            }
        ];

        const bannerElement = document.getElementById('main-banner');
        const navDots = document.querySelectorAll('.banner-nav .dot');
        const bannerTextElement = document.querySelector('.main-banner .banner-text');
        const subTextElement = document.querySelector('.main-banner .sub-text');
        let currentBannerIndex = 0;

        const showBanner = (index) => {
            bannerElement.style.backgroundImage = banners[index].image;
            bannerTextElement.innerHTML = banners[index].text;
            subTextElement.innerHTML = banners[index].subText;
            navDots.forEach(dot => dot.classList.remove('active'));
            navDots[index].classList.add('active');
            currentBannerIndex = index;

            bannerTextElement.style.opacity = 0;
            bannerTextElement.style.transform = 'translateX(-100%)';
            subTextElement.style.opacity = 0;
            subTextElement.style.transform = 'translateX(-100%)';

            setTimeout(() => {
                bannerTextElement.style.opacity = 1;
                bannerTextElement.style.transform = 'translateX(0)';
                subTextElement.style.opacity = 1;
                subTextElement.style.transform = 'translateX(0)';
            }, 500);
        };

        const nextBanner = () => {
            let nextIndex = (currentBannerIndex + 1) % banners.length;
            showBanner(nextIndex);
        };

        navDots.forEach(dot => {
            dot.addEventListener('click', (e) => {
                const index = parseInt(e.target.getAttribute('data-index'));
                showBanner(index);
            });
        });

        // 자동 배너 전환
        setInterval(nextBanner, 5000); // 5초마다 배너 전환

        // 초기 배너 설정
        showBanner(currentBannerIndex);
    });
    </script>
    <!-- 배너 슬라이드 스크립트 끝 -->
</body>
</html>
