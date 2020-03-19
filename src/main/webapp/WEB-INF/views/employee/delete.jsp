<%@ include file="../common/header.jsp"%>

<div class="card bg-secondary text-white">
	<div class="card-header">Delete Employee</div>
	<div class="card-body">
		<div class="container">
			<form action="delete" method="delete"
				enctype="application/x-www-form-urlencoded">
				<div class="form-group">
					<label for="id">* Employee Id:</label> <input type="number" name="id"
						class="form-control form-control-sm" placeholder="Employee Id"
						id="id" required>
				</div>
				<button type="submit" class="btn btn-sm btn-primary">Delete</button>
			</form>

			<c:if test="${detail != null}">
				<p>Your have deleted below employee's detail:</p>
				<%@ include file="detail.jsp"%>
			</c:if>
			<br/>
			<c:if test="${message != null}">
				<div class="alert alert-danger">
					<strong>Error!</strong> ${message}
				</div>
			</c:if>
		</div>
	</div>
</div>

<%@ include file="../common/footer.jsp"%>