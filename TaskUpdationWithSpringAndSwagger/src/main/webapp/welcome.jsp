<%@page session="false"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Daytask Updation Using Ajax</title>
<c:url var="home" value="/" scope="request" />

<spring:url value="/resources/core/css/hello.css" var="coreCss" />
<spring:url value="/resources/core/css/bootstrap.min.css"
	var="bootstrapCss" />
	<script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />

<spring:url value="/resources/core/js/jquery.1.10.2.min.js" var="jqueryJs" />
<script src="${jqueryJs}"></script>
</head>

<nav class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Spring 4 MVC Ajax Hello World</a>
		</div>
	</div>
</nav>


<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<link href="resources/css/jquery-ui-themes.css" type="text/css"
	rel="stylesheet" />
<link href="resources/css/axure_rp_page.css" type="text/css"
	rel="stylesheet" />
<link href="data/styles.css" type="text/css" rel="stylesheet" />
<link href="files/daytask/styles.css" type="text/css" rel="stylesheet" />
<script src="resources/scripts/jquery-1.7.1.min.js"></script>
<script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
<script src="resources/scripts/prototypePre.js"></script>
<script src="data/document.js"></script>
<script src="resources/scripts/prototypePost.js"></script>
<script src="files/daytask/data.js"></script>
<script type="text/javascript">
	$axure.utils.getTransparentGifPath = function() {
		return 'resources/images/transparent.gif';
	};
	$axure.utils.getOtherPath = function() {
		return 'resources/Other.html';
	};
	$axure.utils.getReloadPath = function() {
		return 'resources/reload.html';
	};
</script>
<script>
	$axure
			.loadDocument((function() {
				var _ = function() {
					var r = {}, a = arguments;
					for (var i = 0; i < a.length; i += 2)
						r[a[i]] = a[i + 1];
					return r;
				}
				var _creator = function() {
					return _(b, _(c, d, e, f, g, d, h, d, i, d, j, k, l, d, m,
							f, n, f, o, f, p, f, q, [], r, f), s,
							_(t, [ _(u, v, w, x, y, z, A, [
									_(u, B, w, x, y, C), _(u, D, w, x, y, E),
									_(u, F, w, x, y, G), _(u, H, w, H, y, I),
									_(u, J, w, x, y, K), _(u, L, w, x, y, M),
									_(u, N, w, x, y, O), _(u, P, w, x, y, Q),
									_(u, R, w, x, y, S) ]) ]), T, _(U, I), V,
							_(W, X, Y, _(Z, ba, bb, ba), bc, bd), be, [], bf,
							_(bg, _(bh, bi, bj, bk, bl, bm, bn, bo, bp, bq, br,
									f, bs, _(bt, bu, bv, bw, bx, by), bz, bA,
									bB, bm, bC, _(bD, ba, bE, ba), Y, _(Z, ba,
											bb, ba), bF, d, bG, f, bH, bi, bI,
									_(bt, bu, bv, bJ), bK, _(bt, bu, bv, bL),
									bM, bN, bO, bu, bx, bN, bP, bQ, bR, bS, bT,
									bU, bV, bU, bW, bU, bX, bU, bY, _(), bZ,
									bQ, ca, bQ, cb, _(cc, f, cd, ce, cf, ce,
											cg, ce, bv, _(ch, ci, cj, ci, ck,
													ci, cl, cm)), cn,
									_(cc, f, cd, ba, cf, ce, cg, ce, bv, _(ch,
											ci, cj, ci, ck, ci, cl, cm)), co,
									_(cc, f, cd, by, cf, by, cg, ce, bv, _(ch,
											ci, cj, ci, ck, ci, cl, cp))), cq,
									_(cr, _(bh, cs), ct, _(bh, cu, bM, bQ, bI,
											_(bt, bu, bv, cv)), cw, _(bh, cx,
											bI, _(bt, bu, bv, cv)), cy, _(bh,
											cz, bP, cA), cB, _(bh, cC, bs, _(
											bt, bu, bv, bJ, bx, by), bM, bQ,
											bP, cA, bI, _(bt, bu, bv, cD)), cE,
											_(bh, cF, bs, _(bt, bu, bv, cD, bx,
													by), bM, bQ, bI, _(bt, bu,
													bv, cG)), cH, _(bh, cI, bp,
													cJ, bj, cK, bM, bQ, bI, _(
															bt, bu, bv, cG),
													bz, cL, bR, cM, bT, bQ, bV,
													bQ, bW, bQ, bX, bQ), cN, _(
													bh, cO, bp, cP, bj, cK, bM,
													bQ, bI, _(bt, bu, bv, cG),
													bz, cL, bR, cM, bT, bQ, bV,
													bQ, bW, bQ, bX, bQ), cQ, _(
													bh, cR, bp, cS, bj, cK, bM,
													bQ, bI, _(bt, bu, bv, cG),
													bz, cL, bR, cM, bT, bQ, bV,
													bQ, bW, bQ, bX, bQ), cT, _(
													bh, cU, bp, cV, bj, cK, bM,
													bQ, bI, _(bt, bu, bv, cG),
													bz, cL, bR, cM, bT, bQ, bV,
													bQ, bW, bQ, bX, bQ), cW, _(
													bh, cX, bj, cK, bM, bQ, bI,
													_(bt, bu, bv, cG), bz, cL,
													bR, cM, bT, bQ, bV, bQ, bW,
													bQ, bX, bQ), cY, _(bh, cZ,
													bp, da, bj, cK, bM, bQ, bI,
													_(bt, bu, bv, cG), bz, cL,
													bR, cM, bT, bQ, bV, bQ, bW,
													bQ, bX, bQ), db, _(bh, dc,
													bp, cV, bM, bQ, bI, _(bt,
															bu, bv, cG), bz,
													cL, bR, cM, bT, bQ, bV, bQ,
													bW, bQ, bX, bQ), dd, _(bh,
													de, bM, bQ, bI, _(bt, bu,
															bv, cG), bz, cL,
													bR, cM, bT, bQ, bV, bQ, bW,
													bQ, bX, bQ), df,
											_(bh, dg, bs, _(bt, bu, bv, dh, bx,
													by), bz, cL, bR, bS), di,
											_(bh, dj, bs, _(bt, bu, bv, dh, bx,
													by), bz, cL, bR, cM), dk,
											_(bh, dl, bs, _(bt, bu, bv, dh, bx,
													by), bz, cL, bR, cM), dm,
											_(bh, dn), dp, _(bh, dq, bI, _(bt,
													dr, ds, [ _(bv, bJ),
															_(bv, cv),
															_(bv, dt),
															_(bv, bJ) ])), du,
											_(bh, dv, bM, bQ, bI, _(bt, bu, bv,
													bw))), dw, _()));
				};
				var b = "configuration", c = "showPageNotes", d = true, e = "showPageNoteNames", f = false, g = "showAnnotations", h = "showAnnotationsSidebar", i = "showConsole", j = "linkStyle", k = "displayMultipleTargetsOnly", l = "linkFlowsToPages", m = "linkFlowsToPagesNewWindow", n = "hideAddress", o = "preventScroll", p = "useLabels", q = "enabledViewIds", r = "loadFeedbackPlugin", s = "sitemap", t = "rootNodes", u = "pageName", v = "Daytask", w = "type", x = "Wireframe", y = "url", z = "daytask.html", A = "children", B = "Page 1", C = "page_1.html", D = "teamlead", E = "teamlead.html", F = "project resource", G = "project_resource.html", H = "Folder", I = "", J = "Moduledetails", K = "moduledetails.html", L = "Taskdetails", M = "taskdetails.html", N = "Product", O = "product.html", P = "addteammembers", Q = "addteammembers.html", R = "createteam", S = "createteam.html", T = "globalVariables", U = "onloadvariable", V = "defaultAdaptiveView", W = "name", X = "Base", Y = "size", Z = "width", ba = 0, bb = "height", bc = "condition", bd = "<=", be = "adaptiveViews", bf = "stylesheet", bg = "defaultStyle", bh = "id", bi = "627587b6038d43cca051c114ac41ad32", bj = "fontWeight", bk = "400", bl = "fontStyle", bm = "normal", bn = "fontName", bo = "'Arial'", bp = "fontSize", bq = "13px", br = "underline", bs = "foreGroundFill", bt = "fillType", bu = "solid", bv = "color", bw = 0xFF333333, bx = "opacity", by = 1, bz = "horizontalAlignment", bA = "center", bB = "lineSpacing", bC = "location", bD = "x", bE = "y", bF = "visible", bG = "limbo", bH = "baseStyle", bI = "fill", bJ = 0xFFFFFFFF, bK = "borderFill", bL = 0xFF797979, bM = "borderWidth", bN = "1", bO = "linePattern", bP = "cornerRadius", bQ = "0", bR = "verticalAlignment", bS = "middle", bT = "paddingLeft", bU = "2", bV = "paddingTop", bW = "paddingRight", bX = "paddingBottom", bY = "stateStyles", bZ = "rotation", ca = "textRotation", cb = "outerShadow", cc = "on", cd = "offsetX", ce = 5, cf = "offsetY", cg = "blurRadius", ch = "r", ci = 0, cj = "g", ck = "b", cl = "a", cm = 0.349019607843137, cn = "innerShadow", co = "textShadow", cp = 0.647058823529412, cq = "customStyles", cr = "box_1", cs = "4b7bfc596114427989e10bb0b557d0ce", ct = "box_2", cu = "47641f9a00ac465095d6b672bbdffef6", cv = 0xFFF2F2F2, cw = "placeholder", cx = "c50e74f669b24b37bd9c18da7326bccd", cy = "button", cz = "c9f35713a1cf4e91a0f2dbac65e6fb5c", cA = "5", cB = "primary_button", cC = "cd64754845384de3872fb4a066432c1f", cD = 0xFF169BD5, cE = "link_button", cF = "0d1f9e22da9248618edd4c1d3f726faa", cG = 0xFFFFFF, cH = "heading_1", cI = "1111111151944dfba49f67fd55eb1f88", cJ = "32px", cK = "bold", cL = "left", cM = "top", cN = "heading_2", cO = "b3a15c9ddde04520be40f94c8168891e", cP = "24px", cQ = "heading_3", cR = "8c7a4c5ad69a4369a5f7788171ac0b32", cS = "18px", cT = "heading_4", cU = "e995c891077945c89c0b5fe110d15a0b", cV = "14px", cW = "heading_5", cX = "386b19ef4be143bd9b6c392ded969f89", cY = "heading_6", cZ = "fc3b9a13b5574fa098ef0a1db9aac861", da = "10px", db = "label", dc = "2285372321d148ec80932747449c36c9", dd = "paragraph", de = "4988d43d80b44008a4a415096f1632af", df = "text_field", dg = "44157808f2934100b68f2394a66b2bba", dh = 0xFF000000, di = "text_area", dj = "42ee17691d13435b8256d8d0a814778f", dk = "droplist", dl = "85f724022aae41c594175ddac9c289eb", dm = "table_cell", dn = "33ea2511485c479dbf973af3302f2352", dp = "flow_shape", dq = "caddf88798f04a469d3bb16589ed2a5d", dr = "linearGradient", ds = "colors", dt = 0xFFE4E4E4, du = "icon", dv = "26c731cb771b44a88eb8b6e97e78c80e", dw = "duplicateStyles";
				return _creator();
			})());
</script>
<style>
.ax_default {
	font-family: 'Arial';
	font-weight: 400;
	font-style: normal;
	font-size: 13px;
	color: #333333;
	text-align: center;
	line-height: normal;
}

.box_1 {
	
}

.box_2 {
	
}

.placeholder {
	
}

.button {
	
}

.primary_button {
	color: #FFFFFF;
}

.link_button {
	color: #169BD5;
}

.heading_1 {
	font-family: 'Arial';
	font-weight: bold;
	font-style: normal;
	font-size: 32px;
	text-align: left;
}

.heading_2 {
	font-family: 'Arial';
	font-weight: bold;
	font-style: normal;
	font-size: 24px;
	text-align: left;
}

.heading_3 {
	font-family: 'Arial';
	font-weight: bold;
	font-style: normal;
	font-size: 18px;
	text-align: left;
}

.heading_4 {
	font-family: 'Arial';
	font-weight: bold;
	font-style: normal;
	font-size: 14px;
	text-align: left;
}

.heading_5 {
	font-family: 'Arial';
	font-weight: bold;
	font-style: normal;
	text-align: left;
}

.heading_6 {
	font-family: 'Arial';
	font-weight: bold;
	font-style: normal;
	font-size: 10px;
	text-align: left;
}

.label {
	font-size: 14px;
	text-align: left;
}

.paragraph {
	text-align: left;
}

.text_field {
	color: #000000;
	text-align: left;
}

.text_area {
	color: #000000;
	text-align: left;
}

.droplist {
	color: #000000;
	text-align: left;
}

.table_cell {
	
}

.flow_shape {
	
}

.icon {
	
}
</style>

<style>
body {
	margin: 0px;
	background-image: none;
	position: static;
	left: auto;
	width: 774px;
	margin-left: 0;
	margin-right: 0;
	text-align: left;
}

#base {
	position: absolute;
	z-index: 0;
}

#u0_div {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 552px;
	height: 524px;
	background: -webkit-linear-gradient(270deg, rgba(255, 255, 255, 1) 0%,
		rgba(242, 242, 242, 1) 0%, rgba(228, 228, 228, 1) 100%,
		rgba(255, 255, 255, 1) 100%);
	background: -moz-linear-gradient(180deg, rgba(255, 255, 255, 1) 0%,
		rgba(242, 242, 242, 1) 0%, rgba(228, 228, 228, 1) 100%,
		rgba(255, 255, 255, 1) 100%);
	background: linear-gradient(180deg, rgba(255, 255, 255, 1) 0%,
		rgba(242, 242, 242, 1) 0%, rgba(228, 228, 228, 1) 100%,
		rgba(255, 255, 255, 1) 100%);
	box-sizing: border-box;
	border-width: 1px;
	border-style: solid;
	border-color: rgba(121, 121, 121, 1);
	border-radius: 0px;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

#u0 {
	border-width: 0px;
	position: absolute;
	left: 222px;
	top: 74px;
	width: 552px;
	height: 524px;
}

#u1 {
	border-width: 0px;
	position: absolute;
	left: 2px;
	top: 254px;
	width: 548px;
	visibility: hidden;
	word-wrap: break-word;
}

#u2_div {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 73px;
	height: 36px;
	background: inherit;
	background-color: rgba(255, 255, 255, 0);
	border: none;
	border-radius: 0px;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

#u2 {
	border-width: 0px;
	position: absolute;
	left: 306px;
	top: 92px;
	width: 73px;
	height: 36px;
}

#u3 {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 73px;
	word-wrap: break-word;
}

#u4_div {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 73px;
	height: 36px;
	background: inherit;
	background-color: rgba(255, 255, 255, 0);
	border: none;
	border-radius: 0px;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

#u4 {
	border-width: 0px;
	position: absolute;
	left: 306px;
	top: 147px;
	width: 73px;
	height: 36px;
}

#u5 {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 73px;
	word-wrap: break-word;
}

#u6 {
	border-width: 0px;
	position: absolute;
	left: 468px;
	top: 141px;
	width: 220px;
	height: 29px;
}

#u6_input {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 220px;
	height: 29px;
	font-family: 'Arial';
	font-weight: 400;
	font-style: normal;
	font-size: 13px;
	text-decoration: none;
	color: #000000;
}

#u6_input:disabled {
	color: grayText;
}

#u7_div {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 73px;
	height: 36px;
	background: inherit;
	background-color: rgba(255, 255, 255, 0);
	border: none;
	border-radius: 0px;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

#u7 {
	border-width: 0px;
	position: absolute;
	left: 306px;
	top: 194px;
	width: 73px;
	height: 36px;
}

#u8 {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 73px;
	word-wrap: break-word;
}

#u9 {
	border-width: 0px;
	position: absolute;
	left: 468px;
	top: 190px;
	width: 220px;
	height: 30px;
}

#u9_input {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 220px;
	height: 30px;
	font-family: 'Arial';
	font-weight: 400;
	font-style: normal;
	font-size: 13px;
	text-decoration: none;
	color: #000000;
}

#u9_input:disabled {
	color: grayText;
}

#u10_div {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 102px;
	height: 36px;
	background: inherit;
	background-color: rgba(255, 255, 255, 0);
	border: none;
	border-radius: 0px;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

#u10 {
	border-width: 0px;
	position: absolute;
	left: 306px;
	top: 246px;
	width: 102px;
	height: 36px;
}

#u11 {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 102px;
	word-wrap: break-word;
}

#u12_div {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 102px;
	height: 37px;
	background: inherit;
	background-color: rgba(255, 255, 255, 0);
	border: none;
	border-radius: 0px;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

#u12 {
	border-width: 0px;
	position: absolute;
	left: 306px;
	top: 292px;
	width: 102px;
	height: 37px;
}

#u13 {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 102px;
	word-wrap: break-word;
}

#u14 {
	border-width: 0px;
	position: absolute;
	left: 468px;
	top: 240px;
	width: 220px;
	height: 30px;
}

#u14_input {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 220px;
	height: 30px;
	font-family: 'Arial';
	font-weight: 400;
	font-style: normal;
	font-size: 13px;
	text-decoration: none;
	color: #000000;
}

#u14_input:disabled {
	color: grayText;
}

#u15 {
	border-width: 0px;
	position: absolute;
	left: 468px;
	top: 292px;
	width: 220px;
	height: 63px;
}

#u15_input {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 220px;
	height: 63px;
	font-family: 'Arial';
	font-weight: 400;
	font-style: normal;
	font-size: 13px;
	text-decoration: none;
	color: #000000;
	text-align: left;
}

#u16_div {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 102px;
	height: 36px;
	background: inherit;
	background-color: rgba(255, 255, 255, 0);
	border: none;
	border-radius: 0px;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

#u16 {
	border-width: 0px;
	position: absolute;
	left: 306px;
	top: 378px;
	width: 102px;
	height: 36px;
}

#u17 {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 102px;
	word-wrap: break-word;
}

#u18_div {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 102px;
	height: 36px;
	background: inherit;
	background-color: rgba(255, 255, 255, 0);
	border: none;
	border-radius: 0px;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

#u18 {
	border-width: 0px;
	position: absolute;
	left: 306px;
	top: 431px;
	width: 102px;
	height: 36px;
}

#u19 {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 102px;
	word-wrap: break-word;
}

#u20_div {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 102px;
	height: 36px;
	background: inherit;
	background-color: rgba(255, 255, 255, 0);
	border: none;
	border-radius: 0px;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

#u20 {
	border-width: 0px;
	position: absolute;
	left: 306px;
	top: 501px;
	width: 102px;
	height: 36px;
}

#u21 {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 102px;
	word-wrap: break-word;
}

#u22 {
	border-width: 0px;
	position: absolute;
	left: 468px;
	top: 488px;
	width: 220px;
	height: 30px;
}

#u22_input {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 220px;
	height: 30px;
	font-family: 'Arial';
	font-weight: 400;
	font-style: normal;
	font-size: 13px;
	text-decoration: none;
	color: #000000;
}

#u22_input:disabled {
	color: grayText;
}

#u23_div {
	border-width: 0px;
	position: absolute;
	left: 0px;
	top: 0px;
	width: 132px;
	height: 31px;
	background: inherit;
	background-color: rgba(255, 255, 255, 1);
	box-sizing: border-box;
	border-width: 1px;
	border-style: solid;
	border-color: rgba(121, 121, 121, 1);
	border-radius: 0px;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none;
}

#u23 {
	border-width: 0px;
	position: absolute;
	left: 430px;
	top: 553px;
	width: 132px;
	height: 31px;
}

#u24 {
	border-width: 0px;
	position: absolute;
	left: 2px;
	top: 8px;
	width: 128px;
	word-wrap: break-word;
}

#u25 {
	border-width: 0px;
	position: absolute;
	left: 468px;
	top: 106px;
	width: 220px;
	height: 25px;
}

#u25_input {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 220px;
	height: 25px;
	font-family: 'Arial';
	font-weight: 400;
	font-style: normal;
	font-size: 13px;
	text-decoration: none;
	color: #000000;
	text-align: left;
}

#u26 {
	border-width: 0px;
	position: absolute;
	left: 468px;
	top: 372px;
	width: 220px;
	height: 33px;
}

#u26_input {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 220px;
	height: 33px;
	font-family: 'Arial';
	font-weight: 400;
	font-style: normal;
	font-size: 13px;
	text-decoration: none;
	color: #000000;
	text-align: left;
}

#u27 {
	border-width: 0px;
	position: absolute;
	left: 468px;
	top: 424px;
	width: 220px;
	height: 31px;
}

#u27_input {
	position: absolute;
	left: 0px;
	top: 0px;
	width: 220px;
	height: 31px;
	font-family: 'Arial';
	font-weight: 400;
	font-style: normal;
	font-size: 13px;
	text-decoration: none;
	color: #000000;
	text-align: left;
}

#feedback {
	width: 100%;
	height: 60px;
}
</style>
</head>
<body>
	<div id="feedback"></div>
	<div id="base" class="">
		<form class="form-horizontal" id="search-form">
			<!-- Unnamed (Rectangle) -->
			<div id="u0" class="ax_default flow_shape">
				<div id="u0_div" class=""></div>
				<!-- Unnamed () -->
				<div id="u1" class="text" style="display: none; visibility: hidden">
					<p>
						<span></span>
					</p>
				</div>
			</div>

			<!-- Unnamed (Rectangle) -->
			<div id="u2" class="ax_default label">
				<div id="u2_div" class=""></div>
				<!-- Unnamed () -->
				<div id="u3" class="text">
					<p>
						<span><br></span>
					</p>
					<p>
						<span>Date</span>
					</p>
				</div>
			</div>

			<!-- Unnamed (Rectangle) -->
			<div id="u4" class="ax_default label">
				<div id="u4_div" class=""></div>
				<!-- Unnamed () -->
				<div id="u5" class="text">
					<p>
						<span>Project</span>
					</p>
				</div>
			</div>

			<!-- Unnamed (Droplist) -->
			<div id="u6" class="ax_default droplist">
				<select id="Project" name="Project">
					<option value="Select Project">Select Project</option>
					<option value="internal Project">internal Project</option>
					<option value="timesheet Project">Timesheet Project</option>

				</select>
			</div>

			<!-- Unnamed (Rectangle) -->
			<div id="u7" class="ax_default label">
				<div id="u7_div" class=""></div>
				<!-- Unnamed () -->
				<div id="u8" class="text">
					<p>
						<span>Task Type</span>
					</p>
				</div>
			</div>

			<!-- Unnamed (Droplist) -->
			<div id="u9" class="ax_default droplist">
				<select id="Task" name="Task">
					<option value="Select Task Type">Select Task Type</option>
					<option value="Debug ">Debug</option>
					<option value="analysis ">Analysis</option>
					<option value="coding">coding</option>
					<option value="Testing">Testing</option>

				</select>
			</div>

			<!-- Unnamed (Rectangle) -->
			<div id="u10" class="ax_default label">
				<div id="u10_div" class=""></div>
				<!-- Unnamed () -->
				<div id="u11" class="text">
					<p>
						<span>Product Type</span>
					</p>
				</div>
			</div>

			<!-- Unnamed (Rectangle) -->
			<div id="u12" class="ax_default label">
				<div id="u12_div" class=""></div>
				<!-- Unnamed () -->
				<div id="u13" class="text">
					<p>
						<span>Task Discription</span>
					</p>
				</div>
			</div>

			<!-- Unnamed (Droplist) -->
			<div id="u14" class="ax_default droplist">
				<select id="Product" name="Product">
					<option value="Select Product Type">Select Product Type</option>
					<option value="a">Abc</option>
					<option value="b">Cdf</option>
					<option value="c">Fgh</option>

				</select>
			</div>

			<!-- Unnamed (Text Area) -->
			<div id="u15" class="ax_default text_area">
				<textarea id="TaskDescription" name="TaskDescription"></textarea>
			</div>

			<!-- Unnamed (Rectangle) -->
			<div id="u16" class="ax_default label">
				<div id="u16_div" class=""></div>
				<!-- Unnamed () -->
				<div id="u17" class="text">
					<p>
						<span>Assign Hours</span>
					</p>
				</div>
			</div>

			<!-- Unnamed (Rectangle) -->
			<div id="u18" class="ax_default label">
				<div id="u18_div" class=""></div>
				<!-- Unnamed () -->
				<div id="u19" class="text">
					<p>
						<span>Actual Hours</span>
					</p>
				</div>
			</div>

			<!-- Unnamed (Rectangle) -->
			<div id="u20" class="ax_default label">
				<div id="u20_div" class=""></div>
				<!-- Unnamed () -->
				<div id="u21" class="text">
					<p>
						<span>Status</span>
					</p>
				</div>
			</div>

			<!-- Unnamed (Droplist) -->
			<div id="u22" class="ax_default droplist">
				<select id="Status" name="Status">
					<option value="Select Status">Select Status</option>
					<option value="Not Started">Not Started</option>
					<option value="Completed">Completed</option>
					<option value="Hold">Hold</option>
					<option value="In Progress">In Progress</option>
					<option value="Swapped">Swapped</option>
				</select>
			</div>

			<!-- Unnamed (Rectangle) -->
			<div id="u23" class="ax_default button">

				<!-- Unnamed () -->
				<div id="u24" class="text">
					<input type="submit" value="submit" id="bth-search">
				</div>
			</div>

			<!-- Unnamed (Text Field) -->
			<div id="u25" class="ax_default text_field">
				<input id="Date" name="Date" type="date" />

			</div>

			<!-- Unnamed (Text Field) -->
			<div id="u26" class="ax_default text_field">
				<input id="Assignhours" name="Assignhours" type="text"  />
			</div>

			<!-- Unnamed (Text Field) -->
			<div id="u27" class="ax_default text_field">
				<input id="Actualhours" name="Actualhours" type="text" />

			</div>
		</form>
	</div>


	<script>
		jQuery(document).ready(function($) {

			$("#search-form").submit(function(event) {

				// Disble the search button
				enableSearchButton(false);

				// Prevent the form from submitting via the browser.
				event.preventDefault();

				searchViaAjax();

			});

		});

		function searchViaAjax() {

			var search = {}
			search["date"] = $("#Date").val();
			search["project"] = $("#Project option:selected").text();
			search["task"] = $("#Task option:selected").text();
			search["product"] = $("#Product option:selected").text();
			search["taskDescription"] = $("#TaskDescription").val();
			search["assignhours"] = $("#Assignhours").val();
			search["actualhours"] = $("#Actualhours").val();
			search["status"] = $("#Status option:selected").text();
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "http://localhost:8080/TaskUpdationWithSpringAndSwagger/addStatus",
 				data : JSON.stringify(search),
				dataType : 'json',
				timeout : 100000,
				success : function(data) {
					console.log("SUCCESS: ", data);
					display(data);
				},
				error : function(e) {
					console.log("ERROR: ", e);
					display(e);
				},
				done : function(e) {
					console.log("DONE");
					enableSearchButton(true);
				}
			});

		}

		function enableSearchButton(flag) {
			$("#btn-search").prop("disabled", flag);
		}

		 function display(data) {
			var json = "<h4>Ajax Response</h4><pre>"
					+ JSON.stringify(data, null, 4) + "</pre>";
					
					var dd=JOSN.parse(JSON.stringify(response.data));
					$scope.item=dd;
					alert(dd);
					
			$('#feedback').html(json);
		}  
			/* function display(data)
			{   
			    alert(data);
				alert(data.id)
			    alert(JSON.stringify(data).replace(',', ', ').replace('[', '').replace(']', ''));
				
			} */
		
	</script>

</body>
</html>
