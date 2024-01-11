<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="L.aspx.cs" Inherits="JQuery_P.L" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha384-GLhlTQ8iUNZb3qiH7+9F2Ls93/d6ZlMh0E5+5c46pR56N5l5ZfuP7BhR6LZGQqz1" crossorigin="anonymous">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="container mt-5">
            <div class="card mx-auto" style="max-width: 400px;">
                <div class="card-header text-center">
                    <h3>Login</h3>
                </div>

                <div class="card-body">
                    <div class="mb-3 position-relative">
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>
                        <i class="eye-icon far fa-eye" id="eyeIcon" onclick="togglePasswordVisibility('txtPassword', 'eyeIcon')"></i>
                    </div>

                    <div class="mb-3">
                        <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" CssClass="btn btn-primary btn-lg btn-block" Text="Log in" />
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            function togglePasswordVisibility(textBoxId, iconId) {
                var textBox = document.getElementById(textBoxId);
                var icon = document.getElementById(iconId);

                if (textBox.type === "password") {
                    textBox.type = "text";
                    icon.classList.remove("far", "fa-eye");
                    icon.classList.add("far", "fa-eye-slash");
                } else {
                    textBox.type = "password";
                    icon.classList.remove("far", "fa-eye-slash");
                    icon.classList.add("far", "fa-eye");
                }
            }
        </script>
    </form>
</body>
</html>
