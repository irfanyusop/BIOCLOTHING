<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" MasterPageFile="~/MasterPage.master" %>


<asp:Content ID="contactpage" ContentPlaceHolderID="placeholdermain" runat="server">
    <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyC9TsmqyqURd_ovJnAPaSvJF4sAl806DTw"></script>

    <script>
function initialize() {
  var mapProp = {
      center: new google.maps.LatLng(4.885534, 114.931421),
    zoom:18,
    mapTypeId: google.maps.MapTypeId.ROADMAP,
    mapTypeControl: true,
    mapTypeControlOptions: {

        //style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
        position: google.maps.ControlPosition.TOP_CENTER
    }
  };
  var map1 = new google.maps.Map(document.getElementById("map"), mapProp);
  
  var marker = new google.maps.Marker({
      position: new google.maps.LatLng(4.885534, 114.931421),
      animation: google.maps.Animation.BOUNCE,
      map: map1,
      title: "Click to zoom"
  });
  marker.setMap(map1);

  google.maps.event.addListener(marker, 'click', function () {
      map1.setZoom(20);
      map1.setCenter(marker.getPosition());
  });

}
google.maps.event.addDomListener(window, 'load', initialize);
</script>
    <div id="contacts">
        
        <div id="contactcontent">
           <fieldset>
             <h3>Contact US</h3>
            <hr />

            
            <table>
                <tr>
                    <th>Address:</th>
                    <td><i>RoofTop, Plaza Abdul Razak,Jalan Laksamana Abdul Razak Km2, Off Jalan Tutong, BA1712, Bandar Seri Begawan Brunei Darussalam</i></td>
                </tr>

                 <tr>
                    <th>Email:</th>
                    <td><i>bioclothingbrunei@gmail.com</i></td>
                </tr>

                 <tr>
                    <th>Telephone:</th>
                    <td><i>2225565</i></td>
                </tr>

                  <tr>
                    <th>Fax:</th>
                    <td><i>2225567</i></td>
                </tr>
            </table>
               </fieldset>
            <div id="contactform">
                
                <table>
                    <tr>
                        <td>First Name:</td>
                        <td>Last Name:</td>
                    </tr>

                     <tr>
                        <td>
                            <asp:TextBox ID="txtfname" runat="server"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="txtlname" runat="server"></asp:TextBox></td>
                    </tr>

                      <tr>
                        <td>Email:</td>
                        <td></td>
                    </tr>

                     <tr>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
                        <td>
                            </td>
                    </tr>

                     <tr>
                        <td>Subject:</td>
                        <td></td>
                    </tr>

                     <tr>
                        <td>
                            <asp:TextBox ID="txtsubject" runat="server"></asp:TextBox></td>
                        <td>
                            </td>
                    </tr>

                    <tr>
                        <td>Message:</td>
                        <td></td>
                    </tr>

                     <tr>
                        <td colspan="2">
                            <asp:TextBox ID="txtmessage" runat="server" TextMode="MultiLine" Columns="50" Rows="5"></asp:TextBox></td>
                    </tr>

                     <tr>
                        <td colspan="2">
                            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
                         </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
                            <input id="Reset1" type="reset" value="reset" /><asp:Button ID="Button2" runat="server" Text="Back" />
                        </td>
                    </tr>
                </table>
                
            </div>

            <div id="Map">


            </div>

          

        </div>
        <div id="map">

        </div>
          
    </div>
</asp:Content>
