<div class="tab-pane fade" id="v-pills-customer" role="tabpanel" aria-labelledby="v-pills-customer-tab">
  <div class="card card-outline-secondary my-4">
    <div class="card-header">Customer Details</div>
    <div class="card-body">
      <!-- Div to show the ajax message from validations/db submission -->
      <div id="customerDetailsMessage"></div>
      <form>
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="customerDetailsCustomerFullName">Full Name<span class="requiredIcon">*</span></label>
            <input type="text" class="form-control" id="customerDetailsCustomerFullName" name="customerDetailsCustomerFullName">
          </div>
          <div class="form-group col-md-3">
            <label for="customerDetailsCustomerID">Customer ID</label>
            <input type="text" class="form-control invTooltip" id="customerDetailsCustomerID" name="customerDetailsCustomerID" title="This will be auto-generated when you add a new customer" autocomplete="off">
            <div id="customerDetailsCustomerIDSuggestionsDiv" class="customListDivWidth"></div>
          </div>
        </div>
        <div class="form-row">
          <div class="form-group col-md-3">
            <label for="customerDetailsCustomerMobile">Phone (mobile)<span class="requiredIcon">*</span></label>
            <input type="text" class="form-control invTooltip" id="customerDetailsCustomerMobile" name="customerDetailsCustomerMobile" title="Do not enter leading 0">
          </div>
          <div class="form-group col-md-3">
            <label for="customerDetailsCustomerPhone2">Phone 2</label>
            <input type="text" class="form-control invTooltip" id="customerDetailsCustomerPhone2" name="customerDetailsCustomerPhone2" title="Do not enter leading 0">
          </div>
          <div class="form-group col-md-6">
            <label for="customerDetailsCustomerEmail">Email</label>
            <input type="email" class="form-control" id="customerDetailsCustomerEmail" name="customerDetailsCustomerEmail">
          </div>
        </div>
        <div class="form-group">
          <label for="customerDetailsCustomerAddress">Address<span class="requiredIcon">*</span></label>
          <input type="text" class="form-control" id="customerDetailsCustomerAddress" name="customerDetailsCustomerAddress">
        </div>
        <div class="form-group">
          <label for="customerDetailsCustomerAddress2">Address 2</label>
          <input type="text" class="form-control" id="customerDetailsCustomerAddress2" name="customerDetailsCustomerAddress2">
        </div>
        <div class="form-row">
          <div class="form-group col-md-6">
            <label for="customerDetailsCustomerCity">City</label>
            <input type="text" class="form-control" id="customerDetailsCustomerCity" name="customerDetailsCustomerCity">
          </div>
          <div class="form-group col-md-4">
            <label for="customerDetailsCustomerDistrict">District</label>
            <select id="customerDetailsCustomerDistrict" name="customerDetailsCustomerDistrict" class="form-control chosenSelect">
              <?php include('template/admin/districtList.html'); ?>
            </select>
          </div>
        </div>
        <button type="button" id="addCustomer" name="addCustomer" class="btn btn-success">Add Customer</button>
        <button type="button" id="updateCustomerDetailsButton" class="btn btn-primary">Update</button>
        <button type="button" id="deleteCustomerButton" class="btn btn-danger">Delete</button>
        <button type="reset" class="btn">Clear</button>
      </form>
    </div>
  </div>
</div>