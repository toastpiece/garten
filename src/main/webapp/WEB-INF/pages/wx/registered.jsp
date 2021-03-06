<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/includes/common-tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <script src="http://static-10001988.file.myqcloud.com/resource/js/jquery-2.1.1.min.js"></script>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=0">
  <title>提示</title>
  <link rel="stylesheet" href="https://weui.io/example.css"/>
  <link rel="stylesheet" href="https://cdn.bootcss.com/weui/0.4.3/style/weui.css"/>
  <link rel="stylesheet" href="https://cdn.bootcss.com/weui/0.4.3/style/weui.min.css"/>
</head>

<body ontouchstart>
<div class="weui_msg">
  <div class="weui_icon_area">
    <i class="weui_icon_msg weui_icon_info"></i>
  </div>

  <div class="weui_text_area">
    <h2 class="weui_msg_title">您已是注册用户</h2>
    <p class="weui_msg_desc">赶快看看宝贝的精彩表现吧~</p>
  </div>

  <div class="weui_opr_area">
    <p class="weui_btn_area">
      <a href="javascript:;" class="weui_btn weui_btn_primary" onclick="closeWindow()">返回</a>
    </p>
  </div>

  <div class="weui_extra_area">
    <a href="javascript:void(0)">业务办理的最终解释权归智启科技所有</a>
  </div>
</div>
</body>

<script type="text/javascript">
    function closeWindow() {
        WeixinJSBridge.call('closeWindow');
    }

    function contactCService() {

    }

    function showMaskDlg() {
        var mask = document.getElementById('mask');
        var actionsheet = document.getElementById('weui_actionsheet');
        mask.setAttribute("class", "weui_mask_transition weui_fade_toggle");
        actionsheet.setAttribute("class", "weui_actionsheet weui_actionsheet_toggle");
        mask.style.display = "block";
    }

    function hideMaskDlg(phoneNumber) {
        var mask = document.getElementById('mask');
        var actionsheet = document.getElementById('weui_actionsheet');
        mask.setAttribute("class", "weui_mask_transition");
        actionsheet.setAttribute("class", "weui_actionsheet");
        mask.style.display = "none";
        if (phoneNumber != null) {
            window.location.href = "tel://" + phoneNumber;
        }
    }
</script>
</html>
