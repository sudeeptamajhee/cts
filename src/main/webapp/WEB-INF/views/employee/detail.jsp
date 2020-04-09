<table class="table is-hoverable is-fullwidth">
	<thead>
		<tr>
			<th>#</th>
			<th>First Name</th>
			<th>Middle Name</th>
			<th>Last Name</th>
			<th>Date of Join</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${detail.size() <= 0}">
			<tr>
				<td colspan="5"><strong>Error!</strong> No value present</td>
			</tr>
		</c:if>
		<c:forEach items="${detail}" var="e">
			<tr>
				<td>${e.id}</td>
				<td>${e.firstname}</td>
				<td>${e.middlename}</td>
				<td>${e.lastname}</td>
				<td>${e.doj}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
