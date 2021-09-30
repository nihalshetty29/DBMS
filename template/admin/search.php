<div class="tab-pane fade" id="v-pills-search" role="tabpanel" aria-labelledby="v-pills-search-tab">
  <div class="card card-outline-secondary my-4">
    <div class="card-header">Search Inventory<button id="searchTablesRefresh" name="searchTablesRefresh" class="btn btn-warning float-right btn-sm">Refresh</button></div>
    <div class="card-body">
      <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" data-toggle="tab" href="#itemSearchTab">Items</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="tab" href="#customerSearchTab">Customers</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="tab" href="#saleSearchTab">Orders</a>
        </li>
      </ul>

      <!-- Tab panes -->
      <div class="tab-content">
        <div id="itemSearchTab" class="container-fluid tab-pane active">
          <br>
          <p>Use the grid below to search all details of items</p>
          <!-- <a href="#" class="itemDetailsHover" data-toggle="popover" id="10">wwwee</a> -->
          <div class="table-responsive" id="itemDetailsTableDiv"></div>
        </div>
        <div id="customerSearchTab" class="container-fluid tab-pane fade">
          <br>
          <p>Use the grid below to search all details of customers</p>
          <div class="table-responsive" id="customerDetailsTableDiv"></div>
        </div>
        <div id="saleSearchTab" class="container-fluid tab-pane fade">
          <br>
          <p>Use the grid below to search order details</p>
          <div class="table-responsive" id="saleDetailsTableDiv"></div>
        </div>
      </div>
    </div>
  </div>
</div>