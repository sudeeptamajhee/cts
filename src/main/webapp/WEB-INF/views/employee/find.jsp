<%@ include file="../common/header.jsp"%>

<div class="card bg-secondary text-white">
	<div class="card-header">Find Employee</div>
	<div class="card-body">
		<div class="container">
			<form action="find" method="post"
				enctype="application/x-www-form-urlencoded">
				<div class="form-group">
					<label for="id">* Employee Id:</label> <input type="number" name="id"
						class="form-control form-control-sm" placeholder="Employee Id"
						id="id" required>
				</div>
				<button type="submit" class="btn btn-sm btn-primary">Find
					By Id</button>
			</form>
			<br/>
			<form action="findbysp" method="post"
				enctype="application/x-www-form-urlencoded">
				<div class="form-group">
					<div class="row">
						<div class="form-group col-sm-4">
							<label for="firstname">First Name:</label> <input type="text"
								name="firstname" class="form-control form-control-sm"
								placeholder="First Name" id="firstname">
						</div>
						<div class="form-group col-sm-4">
							<label for="pwd">Middle Name:</label> <input type="text"
								name="middlename" class="form-control form-control-sm"
								placeholder="Middle Name" id="middlename">
						</div>
						<div class="form-group col-sm-4">
							<label for="lastname">* Last Name:</label> <input type="text"
								name="lastname" class="form-control form-control-sm"
								placeholder="Last Name" id="lastname" required>
						</div>
					</div>
				</div>
				<button type="submit" class="btn btn-sm btn-primary">Find
					By SP</button>
			</form>
			<br/>
			<c:if test="${detail != null}">
				<p>Your have searched below employee's detail:</p>
				<%@ include file="detail.jsp"%>
			</c:if>
			<br />
			<c:if test="${message != null}">
				<div class="alert alert-danger">
					<strong>Error!</strong> ${message}
				</div>
			</c:if>
		</div>
	</div>
</div>

<%@ include file="../common/footer.jsp"%>