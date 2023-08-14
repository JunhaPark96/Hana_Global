<%--
  Created by IntelliJ IDEA.
  User: JUNHA
  Date: 2023-08-14
  Time: 오후 5:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <!-- Bootstrap 5 CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
  <!-- Stepper Styles -->
  <link rel="stylesheet" href="./css/step-box.css">
  <link rel="stylesheet" href="./css/terms.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
          crossorigin="anonymous"></script>

  <link href="./css/main.css" rel="stylesheet"/>
  <link href="./css/header.css" rel="stylesheet"/>
  <link href="./css/TTF.css" rel="stylesheet"/>
  <link href="./css/main-body.css" rel="stylesheet"/>
  <title>본인 확인</title>
</head>
<body>
<div class="main-container">
  <%--  공통 헤더--%>
  <%@ include file="/WEB-INF/views/includes/header.jsp" %>
  <main>
    <%--  단계 --%>
    <%@ include file="/WEB-INF/views/includes/stepper.jsp" %>
    <div class="content">
      <%--    1002962104821--%>
        <form name="frm" action="/pib/Dream?withyou=CQMEM0029&amp;__STEP=3" method="post" id="frm"><div class="nppfs-elements"></div>


          <fieldset>
            <div id="divAcct3">


              <legend>고객정보 변경을 위한 기본 정보 입력</legend>

              <div class="title-area clearfix">
                <h3 class="fleft">고객정보</h3>
                <div class="infor mt4">
                  <span class="asterisk">필수입력항목</span> 표시가 있는 항목은 필수 입력사항입니다.
                </div>
              </div>

              <table class="tbl-type mb30 ui-set-tbl-type" border="1" cellspacing="0" summary="자택주소, 직장주소, 직장명, 부서명, 직위, E-mail, E-mail수신여부필수입력항목 제공">
                <caption>고객정보 입력</caption>
                <colgroup>
                  <col width="150">
                  <col>
                  <col width="150">
                  <col>
                </colgroup>
                <tbody>
                <tr>
                  <th scope="row"><label for="addr1">자택주소</label><span class="asterisk">필수입력항목</span></th>
                  <td colspan="3">
							<span class="i-br mb2">
								<select name="haddr_nm" id="haddr_nm" disabled="disabled" class="disabled" style="width: 90px;" title="지번주소/도로명주소 구분명" selected="selected">
									<option value="01">지번주소</option>
									<option value="02">도로명주소</option>
								</select>
								<input type="text" name="zip" id="zip" maxlength="6" value="16708" notnull="true" colname="우편번호" readonly="readonly" style="width: 52px; background-color: rgb(232, 242, 253);" title="우편번호 전체 입력" enc="off">
								<span class=" btn-pack btn-type-2 ui-btn-pack-a ui-set-btn-pack ui-set-btn-pack-event"><a href="#none" onclick="openAddressWizardPop('H');return false;" class="">주소 찾기</a></span>
							</span>
                    <input type="text" name="addr1" id="addr1" value="경기 수원시 영통구 영통로 498" mask="use" colname="자택주소" notnull="true" readonly="readonly" style="width: 447px; background-color: rgb(232, 242, 253);" title="기본주소 입력" enc="off"> <span class="ml20 i-opt">기본주소</span><br>
                    <input type="text" name="addr2" id="addr2" value="128 2004" mask="use" colname="자택상세주소" style="width: 447px;" title="상세주소 입력" maxlength="50" enc="off"> <span class="ml20 i-opt">상세주소</span><br>
                    <input type="text" name="OWHM_HDOF_RITM_TXT" id="OWHM_HDOF_RITM_TXT" value="(영통동, 황골마을주공1단지아파트)" mask="use" readonly="readonly" colname="자택주소" style="width: 447px;" title="우편동명/건물명 입력" enc="off"> <span id="OWHM_HDOF_RITM_TXT_span" class="ml20 i-opt">우편동명/건물명</span>
                    <input type="hidden" name="OWHM_HDOF_ADR_KDCD" id="OWHM_HDOF_ADR_KDCD" value="2">
                    <input type="hidden" name="OWHM_HDOF_POST_SRNO" id="OWHM_HDOF_POST_SRNO" value="002">
                    <input type="hidden" name="OWHM_HDOF_BLD_MNG_NO" id="OWHM_HDOF_BLD_MNG_NO" value="4111710500109550001001342">
                    <input type="hidden" name="OWHM_HDOF_STDO_NO" id="OWHM_HDOF_STDO_NO" value="4111710500">
                  </td>
                </tr>
                <tr>
                  <th scope="row"><label for="czip1">직장주소</label></th>
                  <td colspan="3">
							<span class="i-br mb2">
								<select name="caddr_nm" id="caddr_nm" disabled="disabled" class="disabled" style="width: 90px;" title="직장주소 지번주소/도로명주소 구분명" selected="selected">
									<option value="01">지번주소</option>
									<option value="02">도로명주소</option>
								</select>
								<input type="text" name="czip" id="czip" class="i-com-addr" maxlength="6" value="17035" readonly="readonly" style="width: 52px;" title="우편번호 전체 입력" enc="off">
								<span class=" btn-pack btn-type-2 ui-btn-pack-a ui-set-btn-pack ui-set-btn-pack-event"><a href="#none" id="CEditBtn" onclick="openAddressWizardPop('C');return false;" class="">주소 찾기</a></span>
								<span class=" btn-pack btn-type-2 ui-btn-pack-a ui-set-btn-pack ui-set-btn-pack-event"><a href="javascript:clearCorpAddr('i-com-addr');" title="직장주소삭제" class="">직장주소삭제</a></span>
							</span>
                    <input type="text" name="caddr1" id="caddr1" class="i-com-addr" value="경기 용인시 처인구 모현읍 외대로 81" readonly="readonly" mask="use" style="width: 447px;" title="기본주소 입력" enc="off"> <span class="ml20 i-opt">기본주소</span><br>
                    <input type="text" name="caddr2" id="caddr2" class="i-com-addr" value="한국외국어대학교 글로벌캠퍼스" mask="use" style="width: 447px;" title="상세주소 입력" maxlength="50" enc="off"> <span class="ml20 i-opt">상세주소</span><br>
                    <input type="text" name="WRLC_BRC_RITM_TXT" class="i-com-addr" id="WRLC_BRC_RITM_TXT" value="(한국외국어대학교 글로벌캠퍼스)" colname="도로명참조주소" mask="use" style="width: 447px;" title="우편동명/건물명 입력" enc="off"><span id="WRLC_BRC_RITM_TXT_span" class="ml20 i-opt">우편동명/건물명</span>
                    <input type="hidden" name="WRLC_BRC_ADR_KDCD" id="WRLC_BRC_ADR_KDCD" value="2">
                    <input type="hidden" name="WRLC_BRC_POST_SRNO" id="WRLC_BRC_POST_SRNO" value="005">
                    <input type="hidden" name="WRLC_BRC_BLD_MNG_NO" id="WRLC_BRC_BLD_MNG_NO" value="4146131021101100000245433">
                    <input type="hidden" name="WRLC_BRC_STDO_NO" id="WRLC_BRC_STDO_NO" value="4146131021">
                  </td>
                </tr>
                <tr>
                  <th scope="row"><label for="company">직장명</label></th>
                  <td colspan="3"><input type="text" id="company" name="company" size="40" maxlength="40" value="한국외대 글로벌(캠)" mask="use" title="직장명 최대 20자 입력가능" style="width: 192px;" enc="off"> <span class="i-dsc">(최대 20자 입력가능)</span></td>
                </tr>
                <tr>
                  <th scope="row"><label for="dept">부서명</label></th>
                  <td><input type="text" id="dept" name="dept" size="40" maxlength="40" value="학생" mask="use" style="width: 192px;" enc="off"></td>
                  <th scope="row"><label for="level">직위</label></th>
                  <td><input type="text" id="level" name="level" size="40" maxlength="40" value="" mask="use" style="width: 92px;" enc="off"></td>
                </tr>
                <tr>
                  <th scope="row"><label for="email1">E-mail</label><span class="asterisk">필수입력항목</span></th>
                  <td colspan="3">
                    <input type="text" id="email1" name="email1" value="201904313" colname="E-mail" datatype="AN" maxlength="30" mask="-  */_.," title="E-mail 아이디 입력" style="width: 142px;" enc="off"> @
                    <input type="text" id="email2" name="email2" value="hufs.ac.kr" datatype="AN" mask="-  */_.," maxlength="30" title="E-mail 포탈주소 자동입력" style="width: 142px;" enc="off">
                    <select id="emailname" name="emailname" onchange="setEmailDomainInput()" title="E-mail 주소 선택" style="width: 131px;">
                      <option value="00">직접입력</option>
                      <option value="23">G메일</option>
                      <option value="16">네이버</option>
                      <option value="17">네이트</option>
                      <option value="22">다음</option>
                      <option value="09">드림위즈</option>
                      <option value="05">라이코스</option>
                      <option value="02">야후</option>
                      <option value="21">엠팔</option>
                      <option value="06">코리아닷컴</option>
                      <option value="19">파란닷컴</option>
                      <option value="08">프리챌</option>
                      <option value="14">하이텔</option>
                      <option value="01">한메일</option>
                      <option value="03">한미르</option>
                      <option value="07">핫메일</option>

                      <option value="100">===========</option>
                      <option value="100">이메일 없음</option>
                    </select>
                  </td>
                </tr>
                <tr>
                  <th scope="row">E-mail수신여부<span class="asterisk">필수입력항목</span></th>
                  <td colspan="3">
                    <input type="radio" id="MAIL_YN_GB0" name="MAIL_YN_GB" value="0"> <label for="MAIL_YN_GB0">수신</label>
                    <input type="radio" id="MAIL_YN_GB1" name="MAIL_YN_GB" value="1"> <label for="MAIL_YN_GB1">수신거부</label>
                    <span class="i-dsc">(메일수신거부 등록전에 대상자로 선정된 메일은 발송될 수 있습니다.)</span>
                  </td>
                </tr>
                </tbody>
              </table>
            </div>
          </fieldset>
          <input type="hidden" name="transkey_i" id="transkey_i" value="0"><input type="hidden" name="transkey_inputs" id="transkey_inputs" value=""><input type="hidden" name="transkeyUuid" id="transkeyUuid" value="undefined">
        </form>
        <div class="btn-area mt20" id="OK">
          <span class=" btn-pack btn-type-3c ui-btn-pack-a ui-set-btn-pack ui-set-btn-pack-event"><a href="#none" onclick="doSubmit();return false;" id="confirmBtn" class="">확인</a></span>
          <span class=" btn-pack btn-type-3 ui-btn-pack-a ui-set-btn-pack ui-set-btn-pack-event"><a href="/pib/Dream?withyou=CQMEM0029" class="" id="cancelBtn">취소</a></span>
        </div>
    </div>
  </main>

</div>

</body>
</body>
</html>
