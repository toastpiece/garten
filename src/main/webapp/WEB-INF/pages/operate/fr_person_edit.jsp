<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="/WEB-INF/includes/common-tags.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <%@ include file="/WEB-INF/includes/common-res.jsp" %>
</head>

<body>
<div data-role="page">
    <div data-role="header">
    </div>
    <div data-role="main" class="ui-content jqm-content">
        <form id="setup_form">
            <input type="hidden" name="id" id="id" value="${person.id }">

            <div>
                <h4>序列号</h4>
            </div>
            <div>
                <input type="text" name="personId" id="personId" value="${person.personId }">
            </div>
            <div>
                <h4>姓名</h4>
            </div>
            <div>
                <input type="text" name="personName" id="personName" value="${person.personName }">
            </div>
            <div>
                <h4>Tag</h4>
            </div>
            <div>
                <input type="text" name="tag" id="tag" value="${person.tag }">
            </div>
            <input type="button" id="save" value="保存">
        </form>
    </div>
    <script type="text/javascript">
        $(function () {
            $('#save').click(function () {
                $('#save').attr('disabled', "true");
                $.ajax({
                    type: "POST",
                    url: "${ctx}/operate/fr_person_save",
                    data: $('#setup_form').serialize(),
                    success: function (msg) {
                        $('#save').attr('disabled', "false");
                        window.location.href = msg;
                    }
                });
            });

            function showLoader() {
                var $this = $(this),
                        theme = $this.jqmData( "theme" ) || $.mobile.loader.prototype.options.theme,
                        msgText = $this.jqmData( "msgtext" ) || $.mobile.loader.prototype.options.text,
                        textVisible = $this.jqmData( "textvisible" ) || $.mobile.loader.prototype.options.textVisible,
                        textonly = !!$this.jqmData( "textonly" );
                html = $this.jqmData( "html" ) || "";
                $.mobile.loading( "show", {
                    text: msgText,
                    textVisible: textVisible,
                    theme: theme,
                    textonly: textonly,
                    html: html
                });
            }

            function hiderLoader() {
                $.mobile.loading( "hide" );
            }
        });
    </script>
</div>
</body>
</html>