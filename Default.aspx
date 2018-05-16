<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 84px;
        }
        .auto-style3 {
            width: 84px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 84px;
            height: 29px;
        }
        .auto-style7 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div>
            
            <h1 class="auto-style5">Φόρμα Παραγγελίας</h1>
            
         </div>
        <div  style="width:1300px;height:280px; border:1px solid #000;">
            
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label1" runat="server" Text="Όνομα*" ></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1">**Δώσε όνομα</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label2" runat="server" Text="Επώνυμο*"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2">**Δώσε Επώνυμο</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label3" runat="server" Text="Τηλέφωνο*"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3">**Δώσε τηλέφωνο</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"> <br /><asp:Label ID="Label4" runat="server" Text="Διεύθυνση*"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4">**Δώσε διεύθυνση</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"> <asp:Label ID="Label5" runat="server" Text="ΤΚ*"></asp:Label></td>
                    <td class="auto-style7"><asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5">**Δώσε Τ.Κ.</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label6" runat="server" Text="Email"></asp:Label></td>
                    <td> <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">**Λάθος E-mail</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Label ID="Label7" runat="server" Text="O "></asp:Label></td>
                    <td class="auto-style4"></td>
                </tr>
                 <tr>
                    <td class="auto-style3"><asp:Label ID="Label8" runat="server" Text="ιστότοπός "></asp:Label></td>
                    <td class="auto-style4"></td>
                </tr>
                 <tr>
                    <td class="auto-style3"><asp:Label ID="Label9" runat="server" Text="σας. "></asp:Label></td>
                    <td class="auto-style4"></td>
                </tr>
            </table>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                     
        </div>
        <br />
         <div  style="width:1300px;height:140px; border:1px solid #000;">

             <asp:Label ID="Label10" runat="server" Text="Πόλη:"></asp:Label>
             <asp:DropDownList ID="DropDownList1" runat="server">
                 <asp:ListItem Selected="True">Πόλη</asp:ListItem>
                 <asp:ListItem>Θεσσαλονίκη</asp:ListItem>
                 <asp:ListItem>Αθήνα</asp:ListItem>
             </asp:DropDownList>
             <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="DropDownList1" Operator="NotEqual" ValueToCompare="Πόλη">**Βάλε πόλη</asp:CompareValidator>
             <br />
             <br />
             <asp:Label ID="Label11" runat="server" Text="Τρόπος πληρωμής:" style="font-weight: 700"></asp:Label>
             <br />
             <input type="radio" name="money" value="Αντικαταβολή"/> Αντικαταβολή<br/>
                <input type="radio" name="money" value="Κατάθεση"/> Κατάθεση<br/>
                <input type="radio" name="money" value="Πιστωτική κάρτα"/> Πιστωτική κάρτα
             </div>
                
              
         </div>
        <br />
        <div>
            Οδηγίες γαι την παράδοση
            <asp:TextBox ID="TextBox8" runat="server" Rows="3" TextMode="MultiLine">Εδώ γράφετε!!</asp:TextBox>
            <br />
            Πόσο δύσκολη ήταν η ολοκλήρωση της παραγγελίας<br />
            <div class="slidecontainer">
                Εύκολη
                <input type="range" min="1" max="100" value="50"/>
                Δύσκολη&nbsp;
             </div>
            <asp:Button ID="Button1" runat="server" Text="Επαναφορά" OnClick='myFunction()' />&nbsp;<asp:Button ID="Button2" runat="server" Text="Υποβολή" />

    
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

    
            <br />

    
    </div>
    </form>

    <script>
        function myFunction() {
         document.getElementById("form1").reset();
        }
    </script>
    
</body>
</html>
