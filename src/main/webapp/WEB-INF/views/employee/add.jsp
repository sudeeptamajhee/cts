<%@ include file="../common/header.jsp"%>

<div class="card bg-secondary text-white">
	<div class="card-header">Add Employee</div>
	<div class="card-body">
		<div class="container">
			<form action="add" method="put"
				enctype="application/x-www-form-urlencoded">
				<div class="row">
					<div class="form-group col-sm-4">
						<label for="firstname">* First Name:</label> <input type="text"
							name="firstname" class="form-control form-control-sm"
							placeholder="First Name" id="firstname" required>
					</div>
					<div class="form-group col-sm-4">
						<label for="pwd">* Middle Name:</label> <input type="text"
							name="middlename" class="form-control form-control-sm"
							placeholder="Middle Name" id="middlename" required>
					</div>
					<div class="form-group col-sm-4">
						<label for="lastname">* Last Name:</label> <input type="text"
							name="lastname" class="form-control form-control-sm"
							placeholder="Last Name" id="lastname" required>
					</div>
				</div>
				<div class="row">
					<div class="form-group col-sm-4">
						<label for="pwd">* Date of Join:</label> <input type="date"
							name="doj" class="form-control form-control-sm"
							placeholder="Date of Join" id="doj" required>
					</div>
				</div>
				<button type="submit" class="btn btn-sm btn-primary">Submit</button>
			</form>

			<c:if test="${detail != null}">
				<p>You have added below employee's detail:</p>
				<%@ include file="detail.jsp"%>
			</c:if>
		</div>
	</div>
</div>

<%@ include file="../common/footer.jsp"%>