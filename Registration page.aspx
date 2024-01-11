<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration page.aspx.cs" Inherits="JQuery_P.Registration_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.min.js"></script>


    <style>
        body {
            font-family: 'Arial',sans-serif;
            background-color: lightsalmon;
            margin: 20px;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            background-color: blanchedalmond;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        .btn {
            Text-align: center;
        }

        .error {
            color: red;
        }
        

                    
                 
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form-group">
            <label for="exampleFormControlInput1">Name</label>
            <asp:TextBox ID="TextBox4" class="form-control" placeholder="Enter your Name*" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">Last Name</label>
            <asp:TextBox ID="TextBox1" class="form-control" placeholder="Enter Your last Name*" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">Email</label>
            <asp:TextBox ID="TextBox2" class="form-control" placeholder="Enter Your Email address*" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">Password</label>
            <asp:TextBox ID="TextBox3" class="form-control" placeholder="Enter your password*" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="exampleFormControlInput1">Confirm Password</label>
            <asp:TextBox ID="TextBox5" class="form-control" placeholder="Enter Your confirm-password*" runat="server"></asp:TextBox>
        </div>

        <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">
            
           <strong  class="mb-0 me-4 dark">Gender:</strong>
               

            <div class="form-check form-check-inline mb-0 me-4">
                <asp:TextBox ID="TextBox6" class="form-check-input" type="radio" name="inlineRadioOptions" runat="server"></asp:TextBox>

              
                <label class="form-check-label" for="femaleGender">Female</label>
            </div>

            <div class="form-check form-check-inline mb-0 me-4">
                 <asp:TextBox ID="TextBox7" class="form-check-input" type="radio" name="inlineRadioOptions" runat="server"></asp:TextBox>
             
                <label class="form-check-label" for="maleGender">Male</label>
            </div>

            <div class="form-check form-check-inline mb-0">
                <asp:TextBox ID="TextBox8" class="form-check-input" type="radio" name="inlineRadioOptions" runat="server"></asp:TextBox>

             
                <label class="form-check-label" for="otherGender">Other</label>
            </div>
        </div>



         
                  <div class="col-md-6 mb-4" "style="padding: 100px";>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>Select Type</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
                <asp:ListItem>User</asp:ListItem>
            </asp:DropDownList>
        </div>
            

        <div class="d-grid">
            <asp:Button ID="Button1" runat="server" CssClass="form-control btn btn-primary  btn-block btn-lg" Text="Submit" OnClick="Button1_Click" />
        </div>

    </form>
    <script>
        $(document).ready(function () {
            $("#form1").validate({
                rules: {
                    'TextBox4': {
                        required: true,
                        minlength: 6
                    },
                    'TextBox1': {
                        required: true,
                        minlength: 6
                    },
                    TextBox2: {
                        required: true,
                        minlength: 8
                    },
                    TextBox3: {
                        required: true,
                        minlength: 6
                    },
                    TextBox5: {
                        required: true,
                        minlength: 6

                    },

                },
                messages: {
                    'TextBox4': {
                        required: 'please enter your name',
                        minlength: 'Name must be at least 6 characters long'

                    },
                    'TextBox1': {
                        required: 'please enter your last name',
                        minlength: 'Name must be at least 6 characters long'
                    },
                    'TextBox2': {
                        required: 'please enter a valid email adress',
                        minlength: 'please enter a valid email adress'

                    },
                    'TextBox3': {
                        required: 'please enter a password',
                        minlength: 'password must be at last 6 character long'

                    },
                    'TextBox4': {
                        required: 'please confirm your password',
                        equalTo: 'password do not match'
                    }

                },
                errorElement: 'div',
                errorPlacement: function (error, element) {
                    error.addClass('invalid-feedback');
                    element.closest('.form-group').append(error);
                },
                highlight: function (element, errorClass, validClass) {
                    $(element).addClass('is-invalid');
                },
                unhighlight: function (element, errorClass, validClass) {
                    $(element).removeClass('is-invalid');
                }
            });

        });
    </script>
</body>
</html>
