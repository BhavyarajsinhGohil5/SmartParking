<%----- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Parking</title>
</head>
<body>
<h2>View Parking</h2>
Title : ${parking.title }<br>
Address :  ${parking.address }<br>
TotalCapacity(2 Wheeler) : ${parking.totalCapacity2wheeler }<br>
TotalCapacity(4 Wheeler) : ${parking.totalCapacity4wheeler }<br>
HourlyChargeTwoWheeler : ${parking.hourlyCharge2wheeler }<br>
HourlyChargeFourWheeler : ${parking.hourlyCharge4wheeler }<br>
ParkingType : ${parking.parkingType }<br>
Latitude : ${parking.latitude }<br>
Longitude : ${parking.longitude }<br>

</body>
</html>
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Parking</title>
</head>

<body> -->
<section class="bg0 p-t-75 p-b-120">
    <div class="container">
        <div class="col p-b-148">
            <div class="col-md-7 col-lg-8">
                <div class="p-t-7 p-r-85 p-r-15-lg p-r-0-md">
                    <!-- <h3 class="mtext-111 cl2 p-b-16">
                        Our Story
                    </h3>

                    <p class="stext-113 cl6 p-b-26">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris consequat consequat enim, non auctor massa ultrices non...
                    </p>

                    <p class="stext-113 cl6 p-b-26">
                        Donec gravida lorem elit, quis condimentum ex semper sit amet. Fusce eget ligula magna...
                    </p>

                    <p class="stext-113 cl6 p-b-26">
                        Any questions? Let us know in store at 8th floor, 379 Hudson St, New York, NY 10018 or call us on (+1) 96 716 6879
                    </p>
 -->
                    <h3 class="mtext-111 cl2 p-b-16">View Parking Details</h3>

                    <div class="table-responsive">
                        <table class="table table-bordered table-striped stext-90 ">
                            <thead class="bg-light">
	
		<tr>

			<%---- <th>ParkingCode</th>--%>
			<th>Parking ID</th>
            <th>Title</th>
            <th>Address</th>
            <th>Location Name</th>
            <th>Owner ID</th>
            <th>Total Capacity (2W)</th>
            <th>Total Capacity (4W)</th>
            <th>Hourly Charge (2W)</th>
            <th>Hourly Charge (4W)</th>
            <th>Parking Type</th>
            <th>Latitude</th>
            <th>Longitude</th>
		</tr>
		<c:forEach items="${parking}" var="p">
			<tr>
							<td>${p[0]}</td>
	 						<td>${p[1]}</td>
                            <td>${p[2]}</td>
                            <td>${p[3]}</td>
                            <td>${p[4]}</td>
                            <td>${p[5]}</td>
                            <td>${p[6]}</td>
                            <td>${p[7]}</td>
                            <td>${p[8]}</td>
                            <td>${p[9]}</td>
                            <td>${p[10]}</td>
                            <td>${p[11]}</td>
			</tr>
		</c:forEach>
</tbody>
                        </table>
                    </div>
 </div>
            </div>
        </div>
    </div>
</section>

<!-- 
</body>
</html> -->