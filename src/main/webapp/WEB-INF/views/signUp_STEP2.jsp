<%--
  Created by IntelliJ IDEA.
  User: JUNHA
  Date: 2023-08-14
  Time: 오전 12:39
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
    <title>계좌 등록 </title>
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
            <form id="frm" name="d429471964cbb9218" data-nppfs-form-id="d429471964cbb9218">
                <div class="nppfs-elements" style="display:none;">
                    <input type="hidden" name="__E2E_RESULT__"
                                                                         value="39990babfe94b69a92c1d1ca5f874a0b502de3a7eb955b838f53ad4706d8428142165d2badc4dea558122e3aee4fca2bc25a4dd10e90af40f896986d8cc0719c945e2a9fddef2a72ef8080320d2b4815066b7486e72fb0e21f06d187d8ecada65494a29b0e119fe4612b4ab9b6b7e48088e862d08bb2d6da1c477d673434fe13252ae43a34ad7a25d104845aa362689182344a7df5179ed38563ff06d293e76185025a8d69e3980f75dfc7efb71358f960e1911e54c3f333df289b53e8f4b13c4e034602a19d19706f0f1ddb8dc6922bce8e3de755f29d7bdbd4e4467e85b825f8f346614d1aa518d44df2178ed72798abac04cacfa9a110b8518faab837892d">
                    <input type="hidden" name="__E2E_UNIQUE__" value="169200079170324"><input type="hidden"
                                                                                              name="crtSmsPsNo2__E2E__"
                                                                                              value=""><input
                            type="hidden" name="pressIsuNo2__E2E__" value=""><input type="hidden" name="cardNo2__E2E__"
                                                                                    value=""><input type="hidden"
                                                                                                    name="cardNo3__E2E__"
                                                                                                    value=""><input
                            type="hidden" name="cvcNo__E2E__" value=""><input type="hidden" name="cardPwd__E2E__"
                                                                              value=""><input type="hidden"
                                                                                              name="smsCrtNo__E2E__"
                                                                                              value=""></div>

                <input type="hidden" id="recomNo8" value="">
                <input type="hidden" id="canvasser" value="">
                <input type="hidden" id="trid" value="">
                <input type="hidden" id="extCdPrdCd" value="">
                <input type="hidden" id="entId" value="">
<%--                신청인 정보--%>
                <section>
                    <div class="titArea">
                        <h2 class="titH3">신청인 정보</h2>
                        <p class="desc">신청인 정보를 입력해주세요.<span id="fmTxt1" style="display:none;"> 가족카드 발급 시 본인회원 정보를 입력해주세요.</span>
                            <a href="#" class="links" id="applicantInfoPop">유의사항</a></p>
                    </div>

                    <table class="tableY formTbl">
                        <colgroup>
                            <col style="width:185px">
                            <col style="width:auto">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="th">성명</td>
                            <td>
                                <div class="iptWrap"><input type="text" class="ipt uiAct" title="성명 입력" id="crtSmsCstNm"
                                                            name="crtSmsCstNm">
                                    <button class="btnIco_del" tabindex="-1"><span class="blind">해당 필드 입력값 삭제</span>
                                    </button>
                                </div>
                                <p class="fieldMsg error" id="crtSmsCstNmError" style="display:none">성명을 올바르게
                                    입력해주세요.</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="th">주민등록번호</td>
                            <td>
                                <div class="setHalf" id="crtSmsPsNoArea">
                                    <div class="iptWrap"><input type="tel" class="ipt uiAct" maxlength="6"
                                                                title="주민등록번호 앞 6자리 입력" id="crtSmsPsNo1" value=""
                                                                name="crtSmsPsNo1">
                                        <button class="btnIco_del" tabindex="-1"><span class="blind">해당 필드 입력값 삭제</span>
                                        </button>
                                    </div>
                                    <span class="sign" aria-hidden="true">-</span>

                                    <div class="keypad letter7" id="keypadDiv">
                                        <input type="password" id="crtSmsPsNo2" name="crtSmsPsNo2"
                                               class="ipt notDel uiAct nppfs-npk" maxlength="7" title="주민등록번호 뒤 7자리 입력"
                                               data-tk-kbdtype="number" npkencrypt="on" npknum="on" autocomplete="off"
                                               autocorrect="off" spellcheck="false" autocapitalize="off"
                                               style="color: rgb(255, 0, 0); background-color: rgb(169, 208, 245);">
                                        <button type="button" class="btnIco_keypad" tabindex="-1" aria-hidden="true">
                                            <span>보안키패드</span></button>
                                    </div>
                                </div>
                                <p class="fieldMsg error" id="psno_msg" style="display:none"></p>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </section>
<%--                휴대폰정보--%>
                <section id="hpNoArea" style="">
                    <table class="tableY formTbl">

                        <colgroup>
                            <col style="width:185px">
                            <col style="width:auto">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="th">휴대폰 번호</td>
                            <td>
                                <div class="setPhone">
                                    <select class="ipt notDel uiAct" title="휴대폰 앞 3자리 선택" id="sendHpNo1"
                                            name="sendHpNo">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select>
                                    <div class="iptWrap"><input type="tel" class="ipt uiAct"
                                                                placeholder="'-' 없이 숫자만 입력해주세요" title="휴대폰 나머지 뒷자리 입력"
                                                                maxlength="8" id="sendHpNo2" name="sendHpNo2">
                                        <button class="btnIco_del" tabindex="-1"><span class="blind">해당 필드 입력값 삭제</span>
                                        </button>
                                    </div>
                                </div>

                                <p class="txtList_star">위의 휴대폰 번호로 신용카드 설명서가 발송되오니, 정확하게 입력해주세요.</p>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </section>
<%--                신분증 정보--%>
                <section>
                    <div class="titArea">
                        <h2 class="titH3">신분증 정보</h2>
                        <p class="desc">신분증 선택 후 정보를 입력해주세요.</p>
                    </div>

                    <table class="tableY formTbl">
                        <colgroup>
                            <col style="width:185px">
                            <col style="width:auto">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="th">본인 신분증</td>
                            <td>
                                <ul class="iptGroup iptBtn">
                                    <li>
                                        <input type="radio" class="ipt notDel uiAct" checked="checked" name="rdoGroup7"
                                               id="rdo30" value="1">
                                        <label for="rdo30">주민등록증</label>
                                    </li>
                                    <li>
                                        <input type="radio" class="ipt notDel uiAct" name="rdoGroup7" id="rdo31"
                                               value="2">
                                        <label for="rdo31">운전면허증</label>
                                    </li>
                                </ul>
                                <a href="#" class="links" id="selfIdtPop">유의사항</a>

                                <!-- 주민등록증 (s) -->
                                <div class="idCardCerti" id="idCardCerti1">
                                    <div class="img"><img src="/dcpc/img/pc/common/certi_img_1.png" alt=""></div>
                                    <div class="form">
                                        <div class="iptWrap"><input type="tel" class="ipt uiAct" maxlength="8"
                                                                    placeholder="'20200101'과 같이 숫자만 입력해주세요."
                                                                    title="주민등록증 발급일자 숫자만 입력해주세요." id="pressIsuDy8"
                                                                    value="" name="pressIsuDy8">
                                            <button class="btnIco_del" tabindex="-1"><span
                                                    class="blind">해당 필드 입력값 삭제</span></button>
                                        </div>
                                        <span class="txt">주민등록증 하단의 발급일자를 입력해주세요.</span>
                                    </div>
                                    <p class="fieldMsg error" id="pressIsuDy8Error" style="display:none"></p>
                                </div>
                                <!-- 주민등록증 (e) -->

                                <!-- 운전면허증 (s) -->
                                <div class="idCardCerti" id="idCardCerti2" style="display:none">
                                    <div class="img"><img src="/dcpc/img/pc/common/certi_img_2.png" alt=""></div>
                                    <div class="form">
                                        <div class="driver">
                                            <select class="ipt notDel uiAct" title="운전면허증 지역 선택" id="pressIsuNoArea">
                                                <option>선택</option>
                                                <option value="11">11</option>
                                                <option value="12">12</option>
                                                <option value="13">13</option>
                                                <option value="14">14</option>
                                                <option value="15">15</option>
                                                <option value="16">16</option>
                                                <option value="17">17</option>
                                                <option value="18">18</option>
                                                <option value="19">19</option>
                                                <option value="20">20</option>
                                                <option value="21">21</option>
                                                <option value="22">22</option>
                                                <option value="23">23</option>
                                                <option value="24">24</option>
                                                <option value="25">25</option>
                                                <option value="26">26</option>
                                                <option value="28">28</option>
                                                <option value="서울">서울</option>
                                                <option value="부산">부산</option>
                                                <option value="경기">경기</option>
                                                <option value="강원">강원</option>
                                                <option value="충북">충북</option>
                                                <option value="충남">충남</option>
                                                <option value="전북">전북</option>
                                                <option value="전남">전남</option>
                                                <option value="경북">경북</option>
                                                <option value="경남">경남</option>
                                                <option value="제주">제주</option>
                                                <option value="대구">대구</option>
                                                <option value="인천">인천</option>
                                                <option value="광주">광주</option>
                                                <option value="대전">대전</option>
                                                <option value="울산">울산</option>
                                            </select>
                                            <div class="iptWrap"><input type="tel" class="ipt uiAct" maxlength="2"
                                                                        title="운전면허증 첫번째 자리 입력" id="pressIsuNo1"
                                                                        name="pressIsuNo1">
                                                <button class="btnIco_del" tabindex="-1"><span class="blind">해당 필드 입력값 삭제</span>
                                                </button>
                                            </div>
                                            <div class="keypad letter6">
                                                <input type="password" id="pressIsuNo2" name="pressIsuNo2"
                                                       class="ipt notDel uiAct nppfs-npk" maxlength="6"
                                                       title="운전면허증 두번째 자리 입력" data-tk-kbdtype="number" npkencrypt="on"
                                                       npknum="on" autocomplete="off" autocorrect="off"
                                                       spellcheck="false" autocapitalize="off"
                                                       style="color: rgb(255, 0, 0); background-color: rgb(169, 208, 245);">
                                                <button type="button" class="btnIco_keypad" tabindex="-1"
                                                        aria-hidden="true"><span>보안키패드</span></button>
                                            </div>
                                            <div class="iptWrap"><input type="tel" class="ipt uiAct" maxlength="2"
                                                                        title="운전면허증 세번째 자리 입력" id="pressIsuNo3"
                                                                        name="pressIsuNo3">
                                                <button class="btnIco_del" tabindex="-1"><span class="blind">해당 필드 입력값 삭제</span>
                                                </button>
                                            </div>
                                        </div>
                                        <span class="txt">운전면허증 번호를 입력해주세요.</span>
                                    </div>
                                    <p class="fieldMsg error" id="pressIsuNo20Error" style="display:none"></p>
                                </div>
                                <!-- 운전면허증 (e) -->
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </section>


                <section id="tmAgreeArea" style="display:none">
                    <table class="tableY formTbl">
                        <colgroup>
                            <col style="width:185px">
                            <col style="width:auto">
                        </colgroup>
                        <tbody>
                        <tr>
                            <td class="th">휴대폰 번호</td>
                            <td>
                                <div class="setPhone">
                                    <select class="ipt notDel uiAct" title="휴대폰 앞 3자리 선택" id="hp1No3" name="hp1No3">
                                        <option value="010">010</option>
                                        <option value="011">011</option>
                                        <option value="016">016</option>
                                        <option value="017">017</option>
                                        <option value="018">018</option>
                                        <option value="019">019</option>
                                    </select>
                                    <div class="iptWrap"><input type="tel" class="ipt uiAct"
                                                                placeholder="'-' 없이 숫자만 입력해주세요" title="휴대폰 나머지 뒷자리 입력"
                                                                maxlength="8" id="hp23No4" name="hp23No4">
                                        <button class="btnIco_del" tabindex="-1"><span class="blind">해당 필드 입력값 삭제</span>
                                        </button>
                                    </div>
                                    <p class="fieldMsg error" id="hpNoError" style="display:none"></p>
                                </div>

                            </td>
                        </tr>
                        </tbody>
                    </table>
                </section>



                <section class="certContain">
                    <!-- 인증공통영역 include (s) -->
                    <div id="divItgCrt" style="display: none;">
                        <div id="divItgCrtArea">
                            <!-- 본인인증 (s) -->
                            <form id="formItgCrt" name="formItgCrt" onsubmit="return false;"
                                  data-nppfs-form-id="dc5126c52867d90ba">
                                <div id="itgCrtArea" class="tabWrap certiTab">
                                    <!-- titArea (s) -->
                                    <div class="titArea">
                                        <h2 class="titH2">본인인증</h2>
                                    </div>
                                    <!-- titArea (e) -->
                                    <!-- 탭 리스트 (s) -->
                                    <ul class="tabList certiTab uiAct" role="tablist">
                                        <li id="A03" class="on" role="tab" aria-controls="panel_2_0" tabindex="0"
                                            aria-selected="true"><span class="ico_card">카드인증</span><span
                                                class="blind guideTxt">선택됨</span></li>
                                        <li id="A02" role="tab" aria-controls="itgCrtTabPanelWcoa" tabindex="0"
                                            aria-selected="false"><span class="ico_accre">인증서</span></li>
                                        <li id="A01" role="tab" aria-controls="itgCrtTabPanelSms" tabindex="0"
                                            aria-selected="false"><span class="ico_phone">휴대폰인증</span></li>
                                        <li id="A08" role="tab" aria-controls="itgCrtTabPanelAccCert" tabindex="0"
                                            aria-selected="false"><span class="ico_accCert">계좌인증</span></li>

                                    </ul>
                                    <p class="blind guideTxt">카드인증 탭 내용 시작</p>


                                </div>
                                <input type="hidden" id="transkey_crtCardNo2" name="transkey_crtCardNo2" value=""><input
                                    type="hidden" id="transkey_HM_crtCardNo2" name="transkey_HM_crtCardNo2"
                                    value=""><input type="hidden" id="transkey_crtCardNo3" name="transkey_crtCardNo3"
                                                    value=""><input type="hidden" id="transkey_HM_crtCardNo3"
                                                                    name="transkey_HM_crtCardNo3" value=""><input
                                    type="hidden" id="transkey_crtCvcNo" name="transkey_crtCvcNo" value=""><input
                                    type="hidden" id="transkey_HM_crtCvcNo" name="transkey_HM_crtCvcNo" value=""><input
                                    type="hidden" id="transkey_crtCardPwd" name="transkey_crtCardPwd" value=""><input
                                    type="hidden" id="transkey_HM_crtCardPwd" name="transkey_HM_crtCardPwd"
                                    value=""><input type="hidden" id="transkey_crtSmsCrtNo" name="transkey_crtSmsCrtNo"
                                                    value=""><input type="hidden" id="transkey_HM_crtSmsCrtNo"
                                                                    name="transkey_HM_crtSmsCrtNo" value=""></form>
                            <!-- 본인인증 (e) -->

                            <script>var bKFVC = {
                                "c_KX9": "/dcpc",
                                "kZ3vw": "576f117ed0a9de1464867f336dabc073eda583d8634a11556fd21eb097e5ff3f76f266e0e30382235d86ddc5e6405d94c54a342949a1cedd5b2eb3332c8b8f148fa787aff3795ba8b22b3a4ed65649a57e8d59b9bd41b89db76c42f556e711174da51399aeec6c00995b694883a0d97b97f6506fcef1105e3d15e2e4f640f15281740d97f7271ba0aa937a6da61366cd421b2007ae7b8a766e027c3d52b9f96d4e181a14d8e4b6a9a56dfa45bc391f48bc725213ba29851d42bcffa5f04a7ea9c0bb78f2beaf4c325ce2c9e5a47de3a8b97dd5c6fd0dd5f0044638e73405c42b4ba88352105c57b7841a39c739296107da4779a37b5f873b49ec6aa9f1cc8b50b36a27fa99c9121a37ffef35d2e34b4d578cb9b52bf558cca5a9b1342291637452e9a5017b269f1bd64a0fe3d131d6909ae550770daf18d7bc0d22ada3ddbd66265de7cf2d5a67781fbe045cfb54130d9654ca53c6d60ef2987691bbda4df09850d1d5509a7fdcae728d935d339be8d67c779bef9771047bd1e32fc66f76526d0884e0c5c7486d0807ebe6a045fec483ff4563fcf49d759c282792774ebd04855cfd083c3be2d2bb0bfaa3728cd991ed0ff93a71ba18f84d299c9b86009aad79e442278ecf54dbbb9fa883bfc460de3d002b75168db946e21f5c498a2f490f296ff7210dc8195d90b57b250cd97a9f098230e95cb17e88d115e7b3b8cfecf8a4638127f941d7a022d9ab7801d9e726883dd648592d612a8dd714ffa76b5cf07e1d43c103cd1524fd0ef513a7764cc0619ba14c74ec0acf47ec9c9066fd8b89068fbe765e4a5fd0f462da8182e58d3eacb4aee144b22c2df8cbdbd0832381ccda5f4658fdc7db7db999392166528408108e6f130ba00eb2f37273a660862ab930e10aa3a07cf93e6c60263500573dbfd758393d6cd9404b3e48a444c79bac75e7bd40dcd424e2314bfd1a9f73a09f9f78f894ca53c136d68a6cfdb767a0397c6a0a05aab26a59d45092836d272540335bbda5f9d913c5e2d27f5e57d942887a7c8a6b41c3c0f2247cc59f2cc63befd6c9e5f75ed212a1a3096b8d41d4f750759b8a95f0ccea094daac3e5f94c7babb2c86d08bae57bfd4c971fd4a441b6c6e017b2cb768bebec3e26b31c230dcfdb9e36d481db52f8e5a1a46e0e62c7de88dad3fd17aca60a6a6c90f7a15517e597998b",
                                "qmXUS": {"rjEaf": "", "BF_v1": ".do", "LqEOu": true},
                                "OBmiC": {"_NuM3": [], "pMOq1": ""},
                                "DvY_Z": {"r0ul2": "", "e5cgB": 0, "RkLUl": "", "k8sQA": []},
                                "CSctH": {"FjA0M": "", "iHkvS": [], "DVyuM": [], "kk_Vl": ""}
                            };
                            </script>
                            <script src="/dcpc/js/caccadadbidfafb-4169558b07cef25b0f761f72abd31547/dynamic/release/VYW4CPQSHoAyKhD.js"></script>
                            <script type="text/javascript" src="/dcpc/js/crt/getItgCrt.js"></script>

                        </div>
                        <!-- end of rspCd == "00" -->

                    </div>
                    <!-- 인증공통영역 include (e) -->

                    <div class="btnArea" id="btnFclArea">
                        <a href="#" id="btnCancel" class="btn_s">취소</a>
                        <a href="#" id="btnNext" class="btn_p">다음</a>
                        <a href="#" id="btnMyCard" class="btn_p" style="display:none">보유카드조회</a>
                    </div>

                    <div class="btnArea certArea" id="btnCertConfirmArea" style="display:none;">
                        <a href="#" id="btnCertCancel" class="btn_s">취소</a>
                        <a href="#" id="btnCertConfirm" class="btn_p">다음</a>
                    </div>
                </section>
                <input type="hidden" id="transkeyUuid" name="transkeyUuid"
                       value="add63dfb8773a8e93c091d38cd7c7ee6e0e1a7fb40adbb7eb4c7b12692b721bc"><input type="hidden"
                                                                                                       id="transkey_crtSmsPsNo2"
                                                                                                       name="transkey_crtSmsPsNo2"
                                                                                                       value=""><input
                    type="hidden" id="transkey_HM_crtSmsPsNo2" name="transkey_HM_crtSmsPsNo2" value=""><input
                    type="hidden" id="transkey_pressIsuNo2" name="transkey_pressIsuNo2" value=""><input type="hidden"
                                                                                                        id="transkey_HM_pressIsuNo2"
                                                                                                        name="transkey_HM_pressIsuNo2"
                                                                                                        value=""></form>
        </div>
    </main>

</div>

</body>
</html>
