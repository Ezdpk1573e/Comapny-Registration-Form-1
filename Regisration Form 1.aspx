<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Regisration Form 1.aspx.cs" Inherits="Comapny_Registration_Form_1.Regisration_Form_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 398px;
            margin-bottom: 0px;
        }
        .auto-style3 {
            font-size: x-large;
            width: 216px;
            text-decoration: underline;
        }
        .auto-style4 {
            width: 216px;
        }
        .auto-style6 {
            width: 223px;
        }
        .auto-style10 {
            width: 150px;
        }
        .auto-style14 {
            font-size: large;
        }
        .auto-style15 {
            font-size: medium;
        }
        .auto-style28 {
            height: 31px;
        }
        .auto-style30 {
            width: 223px;
            height: 31px;
        }
        .auto-style31 {
            width: 216px;
            height: 31px;
        }
        .auto-style32 {
            width: 150px;
            height: 31px;
        }
        .auto-style34 {
            height: 32px;
        }
        .auto-style37 {
            width: 216px;
            height: 32px;
        }
        .auto-style38 {
            width: 150px;
            height: 32px;
        }
        .auto-style39 {
            width: 167px;
        }
        .auto-style40 {
            height: 31px;
            width: 167px;
        }
        .auto-style41 {
            width: 167px;
            height: 32px;
        }
        .auto-style42 {
            width: 223px;
            height: 32px;
        }
        .auto-style43 {
            width: 176px;
        }
        .auto-style44 {
            width: 176px;
            height: 31px;
        }
        .auto-style45 {
            width: 176px;
            height: 32px;
        }
        .auto-style46 {
            width: 223px;
            height: 32px;
            font-size: larger;
        }
        .auto-style47 {
            width: 167px;
            height: 42px;
        }
        .auto-style48 {
            width: 223px;
            height: 42px;
        }
        .auto-style49 {
            width: 216px;
            height: 42px;
        }
        .auto-style50 {
            width: 176px;
            height: 42px;
        }
        .auto-style51 {
            width: 150px;
            height: 42px;
        }
        .auto-style52 {
            height: 42px;
        }
        </style>
</head>
<body style="height: 497px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3"><strong><em>Student Registration </em></strong></td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style6"><strong>Enter Name :</strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style14" Width="191px"></asp:TextBox>
                </td>
                <td class="auto-style43">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Valid Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style6"><strong>Enter E-Mail :</strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style14" Width="191px" TextMode="Email"></asp:TextBox>
                </td>
                <td class="auto-style43">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Valid E-Mail" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style39"></td>
                <td class="auto-style6"><strong>Password :</strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style14" Width="191px" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=!*()@%&amp;]).{8,}$">Wrong Password</asp:RegularExpressionValidator>
                    <br />
                </td>
                <td class="auto-style43">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Password" ForeColor="Red" ValidateRequestMode="Enabled"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style6"><strong>Confirm Password :</strong></td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style14" Width="191px" TextMode="Password"></asp:TextBox>
                </td>
                <td class="auto-style43">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Enter same Password" ForeColor="Red" ValidateRequestMode="Enabled"></asp:CompareValidator>
                </td>
                <td class="auto-style10">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47"></td>
                <td class="auto-style48"><strong>Date of Birth :</strong></td>
                <td class="auto-style49">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style14" Width="191px" TextMode="Date" OnTextChanged="TextBox5_TextChanged" AutoPostBack="True"></asp:TextBox>
                
                
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Date" ForeColor="Red"></asp:RequiredFieldValidator>
                
                
                    <br />
                
                
                </td>
                <td class="auto-style50"><strong>Age :</strong></td>
                <td class="auto-style51">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style15" Width="61px" ReadOnly="True" Height="21px"></asp:TextBox>
                </td>
                <td class="auto-style52"></td>
                <td class="auto-style52"></td>
                <td class="auto-style52"></td>
                <td class="auto-style52"></td>
            </tr>
            <tr>
                <td class="auto-style39">&nbsp;</td>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style43">&nbsp;</td>
                <td class="auto-style10">
                    &nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style40"></td>
                <td class="auto-style30"><strong>Country :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
  
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Enter Country" ForeColor="Red"></asp:RequiredFieldValidator>
                    </strong></td>
                <td class="auto-style31">
                    <strong>State :&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="true" Height="16px" Width="111px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Enter State" ForeColor="Red"></asp:RequiredFieldValidator>
                    </strong>
                </td>
                <td class="auto-style44"><strong>City :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="111px">
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Enter City" ForeColor="Red"></asp:RequiredFieldValidator>
                    </strong></td>
                <td class="auto-style32">&nbsp;</td>
                <td class="auto-style28"></td>
                <td class="auto-style28"></td>
                <td class="auto-style28"></td>
                <td class="auto-style28"></td>
            </tr>
            <tr>
                <td class="auto-style41">
                    &nbsp;</td>
                <td class="auto-style42"></td>
                <td class="auto-style38"></td>
                <td class="auto-style45"></td>
                <td class="auto-style34"></td>
                <td class="auto-style34"></td>
                <td class="auto-style34"></td>
            </tr>
            <tr>
                <td class="auto-style41"></td>
                <td class="auto-style46">
                    <h2><strong>Course</strong></h2>
                </td>
                <td class="auto-style37">
                    <h2>Obtaining</h2>
                </td>
                <td class="auto-style45">
                    <h2>Obtained</h2>
                </td>
                <td class="auto-style38">
                    <h2>Percentage</h2>
                </td>
                <td class="auto-style34"></td>
                <td class="auto-style34"></td>
                <td class="auto-style34"></td>
                <td class="auto-style34"></td>
            </tr>
            <tr>
                <td class="auto-style41"></td>
                <td class="auto-style42">
                    HIGH SCHOOL</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style14" Width="191px" TextMode="Number"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter Obtaining Marks" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style45">
                    <asp:TextBox ID="TextBox8" runat="server" AutoPostBack="true" CssClass="auto-style14" Width="191px" OnTextChanged="TextBox8_TextChanged" TextMode="Number"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style14" Width="65px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style34"></td>
                <td class="auto-style34"></td>
                <td class="auto-style34"></td>
                <td class="auto-style34"></td>
            </tr>
            <tr>
                <td class="auto-style41"></td>
                <td class="auto-style42">
                    INTERMEDIATE</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox10" runat="server" CssClass="auto-style14" Width="191px" TextMode="Number"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox10" ErrorMessage="Enter Obtaining Marks" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style45">
                    <asp:TextBox ID="TextBox11" runat="server" CssClass="auto-style14" Width="191px" AutoPostBack="True" OnTextChanged="TextBox11_TextChanged" TextMode="Number"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox11" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox12" runat="server" CssClass="auto-style14" Width="65px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style34"></td>
                <td class="auto-style34"></td>
                <td class="auto-style34"></td>
                <td class="auto-style34"></td>
            </tr>
            <tr>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style42">
                    GRADUATION</td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox13" runat="server" CssClass="auto-style14" Width="191px" TextMode="Number"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox13" ErrorMessage="Enter Obtaining Marks" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style45">
                    <asp:TextBox ID="TextBox14" runat="server" CssClass="auto-style14" Width="191px" AutoPostBack="True" OnTextChanged="TextBox14_TextChanged" TextMode="Number"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox14" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style38">
                    <asp:TextBox ID="TextBox15" runat="server" CssClass="auto-style14" Width="65px" ReadOnly="True"></asp:TextBox>
                </td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style42">&nbsp;</td>
                <td class="auto-style37">
                    <strong>Total average :</strong></td>
                <td class="auto-style45">
                    <asp:TextBox ID="TextBox16" runat="server" CssClass="auto-style14" Width="67px" ReadOnly="True" AutoPostBack="True" Height="27px"></asp:TextBox>
                </td>
                <td class="auto-style38">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style34">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41"></td>
                <td class="auto-style42"></td>
                <td class="auto-style37">
                    <asp:Button ID="Button1" runat="server" BackColor="Pink" BorderColor="Black" BorderWidth="2px" OnClick="Button1_Click" Text="Submit" />
                    </td>
                <td class="auto-style45"></td>
                <td class="auto-style38"></td>
                <td class="auto-style34"></td>
                <td class="auto-style34"></td>
                <td class="auto-style34"></td>
                <td class="auto-style34"></td>
            </tr>
        </table>
    </form>
</body>
</html>
