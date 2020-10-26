<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="footer_content">
	<p class="accessibility_mark">
		<a href="http://www.kwacc.or.kr/CertificationSite/WA/List"> <img
			src="${pageContext.request.contextPath}/resources/images/web_accessibility_2017.png"
			width="70px" height="70px" class="wa_icon"
			alt="국가공인 웹 접근성 품질인증마크_(사)한국시각장애인연합회 (2020.01.08~2021.01.07)"
			title="한국웹접근성평가센터">
		</a>
		<!-- 				<img src="/images/home/common/gov30.gif" class="gov30icon" alt="2015년도 정부3.0 최우수기관" title="정부3.0 최우수기관" /> -->
	</p>
	<div class="footer_txt">
		<p class="footer_policy">
			<a
				href="javascript:fn_menuMove('/html.do?html=/prevent/lostDeclare&amp;sub=F&amp;title=유실물 종합안내&amp;ptitle=유실물신고절차')"
				title="사이트 이용안내">사이트 이용안내</a> | <a href="#" target="_blank"
				onclick="policy_open();return false;" title="개인정보처리방침 새창">개인정보처리방침</a>
		</p>

		<address>
			03739 서울특별시 서대문구 통일로 97 | 민원전화 : 국번없이 182(유료)<br> 홈페이지에 게시된
			이메일주소가 자동수집되는 것을 거부하며, 이를 위반 시 처벌될 수 있음을 양지하여 주시기 바랍니다.
		</address>
		<small class="copyright">Copyright(c) 2016 경찰청 all rights
			reserved.</small>
	</div>
	<p class="footer_182_logo">
		<img
			src="${pageContext.request.contextPath}/resources/images/182_logo.png"
			alt="경찰민원콜센터 국번없이 182">
	</p>
	<!-- go service -->
	<div class="go_service">
		<h1 class="hidden">
			<span>바로가기 서비스</span>
		</h1>
		<ul>
			<li><select title="사이버경찰청 관련 사이트">
					<optgroup label="사이버경찰청">
						<option value="http://www.police.go.kr/">사이버경찰청</option>
						<option value="https://www.police.go.kr/www/open/inst/inst01.jsp">정보공개</option>
						<option
							value="https://www.police.go.kr/user/bbs/BD_selectBbsList.do?q_bbsCode=1032">국회정보공개</option>
						<!-- <option	value="http://www.police.go.kr/portal/bbs/list.do?bbsId=B0000003&amp;menuNo=200052">국민마당</option> -->
						<option value="https://minwon.police.go.kr/">경찰민원포털</option>
						<!-- <option value="http://cyber112.police.go.kr/cyber112/main/contents.do?menuNo=1200052">교통법규위반신고</option> -->
						<!-- 경찰민원포털에서 가능 -->
					</optgroup>
			</select>
				<button type="button" class="go_select" title="사이버경찰청 관련 사이트 새창">GO</button>
			</li>
			<li><select title="지방청/부속기관 관련 사이트">
					<optgroup label="지방청/부속기관">
						<option value="#">지방청/부속기관</option>
						<option value="http://www.smpa.go.kr">서울지방경찰청</option>
						<option value="http://www.bspolice.go.kr">부산지방경찰청</option>
						<option value="http://www.dgpolice.go.kr">대구지방경찰청</option>
						<option value="http://www.icpolice.go.kr">인천지방경찰청</option>
						<option value="http://www.gjpolice.go.kr">광주지방경찰청</option>
						<option value="http://www.djpolice.go.kr">대전지방경찰청</option>
						<option value="http://www.uspolice.go.kr">울산지방경찰청</option>
						<option value="http://www.ggpolice.go.kr">경기남부지방경찰청</option>
						<option value="http://www.ggbpolice.go.kr">경기북부지방경찰청</option>
						<option value="http://www.gwpolice.go.kr">강원지방경찰청</option>
						<option value="http://www.cbpolice.go.kr">충북지방경찰청</option>
						<option value="http://www.cnpolice.go.kr">충남지방경찰청</option>
						<option value="http://www.jbpolice.go.kr">전북지방경찰청</option>
						<option value="http://www.jnpolice.go.kr">전남지방경찰청</option>
						<option value="http://www.gbpolice.go.kr">경북지방경찰청</option>
						<option value="http://www.gnpolice.go.kr">경남지방경찰청</option>
						<option value="http://www.jjpolice.go.kr">제주지방경찰청</option>
						<option value="http://www.police.ac.kr">경찰대학</option>
						<option value="http://www.phrdi.go.kr/">경찰인재개발원</option>
						<option value="http://www.cpa.go.kr">중앙경찰학교</option>
						<option value="http://www.kpia.go.kr/">경찰수사연수원</option>
						<option value="http://www.koroad.or.kr">도로교통공단</option>
						<option value="http://www.nph.go.kr">경찰병원</option>
					</optgroup>
			</select>
				<button type="button" class="go_select" title="지방청/부속기관 관련 사이트 새창">GO</button>
			</li>
			<li><select title="업무 관련 사이트">
					<optgroup label="업무 관련 사이트">
						<option value="#">업무 관련 사이트</option>
						<option value="http://www.police.go.kr/commission/main.do">경찰위원회</option>
						<option value="https://www.police.go.kr/www/security/cyber.jsp ">사이버안전지킴이</option>
						<option value="http://www.kcsi.go.kr/">과학수사관리관</option>
						<option value="http://www.safe182.go.kr/">안전 Dream</option>
						<!-- <option value="http://www.policemuseum.go.kr/kr/">경찰박물관</option>  -->
						<!-- 이전안내만 나와있어 삭제처리 -->
						<!-- <option value="http://www.police.go.kr/HR">인권센터</option>  -->
						<!-- 찾아봐도 안나옴 -->
						<option value="http://cyberbureau.police.go.kr/">사이버안전국</option>
						<!-- <option value="http://net-durumi.netan.go.kr/">넷두루미</option> -->
						<!-- 사이버안전지킴이에 통합 -->
						<option value="http://susa.go.kr">수사구조개혁</option>
						<option value="http://112119.or.kr/ ">공상자후원회</option>
						<option value="http://www.chamsuri.co.kr/">참수리사랑</option>
					</optgroup>
			</select>
				<button type="button" class="go_select" title="업무 관련 사이트 새창">GO</button>
			</li>
		</ul>
	</div>
	<!-- //go service -->
</div>
<!-- //footer_content -->
