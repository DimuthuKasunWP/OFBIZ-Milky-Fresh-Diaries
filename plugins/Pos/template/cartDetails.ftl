<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->

  <div class="navbar">
  <ul>
  <li>
  Invoice Number:
  <input id="invoiceNumber" name="invoiceNumber" value="IN001" />
  </li>
  <li>
  User:
  <input id="user" name="user" value="Kasun" />
  </li>
  </ul>
  <ul>
  <li>
   item Code:
    <input id="itemCode" name="itemCode" value="I001" />
    </li>
    <li>
    Description:
    <input  id="description" name="description" value="" />
    </li>
    <li>
    Quantity:
    <input  id="qty" name="qty" value="" />
    </li>
    
    <li>
    Unit Price:
    <input   id="unitPrice" name="unitPrice" value="" />
    </li>
    <li>
    Choose:
    <select id="searchBy" name="searchBy">
      <option value="productName" selected="selected">${uiLabelMap.Uber}</option>
      <option value="productDescription">${uiLabelMap.Pickup}</option>
    </select>
    </li>
    </ul>
    </br>
  </div>

<br />
<script type="application/javascript">
  document.SearchProducts.productToSearch.focus();
</script>
<style>
body {margin:0;}

.navbar {
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
}

.navbar ul li {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background: #ddd;
  color: black;
}

.main {
  padding: 16px;
  margin-top: 30px;
  height: 1500px; /* Used in this example to enable scrolling */
}
</style>