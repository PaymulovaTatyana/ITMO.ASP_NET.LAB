<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="ITMO.ASP_NET.LAB1.RSVP.Models.Start" MasterPageFile="~/Site.Master" %>
<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="rek">
                <h1>Приглашение на семинар<asp:ScriptManager ID="ScriptManager1" runat="server">
					</asp:ScriptManager>
				</h1>
                <p>Вы приглашены на наш семинар</p>
                <p>Подтвердите свое согласие, пройдя регистрацию</p>
         </div>
         <div class="info"> Семинар состоится 31 марта 2021 года в 9.30 
         	<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                 <ContentTemplate>
                     <asp:Timer runat="server" Interval="100"></asp:Timer>
                     <%DateTime dataseminar = new DateTime(2021,3,31,9,30,0);
                         DateTime dnow = DateTime.Now;
                         int rd = (dataseminar - dnow).Days;
                         int rm = (dataseminar - dnow).Minutes;
                         int rsec = (dataseminar - dnow).Seconds;
                         %>
                     <h3>До семинара осталось <%=rd.ToString()%> дн., <%=rm.ToString()%> мин. и <%=rsec.ToString()%> с.</h3>                    
                 </ContentTemplate>             
			 </asp:UpdatePanel>
         </div>
     </div>
</asp:Content>



