<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="/css/quanli.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/js/bootstrap.min.js" integrity="sha512-eHx4nbBTkIr2i0m9SANm/cczPESd0DUEcfl84JpIuutE6oDxPhXvskMR08Wmvmfx5wUpVjlWdi82G5YLvqqJdA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0-alpha1/css/bootstrap.min.css" integrity="sha512-72OVeAaPeV8n3BdZj7hOkaPSEk/uwpDkaGyP4W2jSzAC8tfiO4LMEDWoL3uFp5mcZu+8Eehb4GhZWFwvrss69Q==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/js/bootstrap.min.js" integrity="sha512-Cy3gSrKCS8aJ7AIaammc0wLXyKRmTa8ntgHvU01Tuz4EdsqVgk/lKzFm/b/8RxOWBaoHI2uGLLU6rXMbqKcGHA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" integrity="sha512-FOS5ANNUsuvefA5Fm6hZBLsxqfF105LIysEgV8VNz29jZLVYIhI+MOLKPBmMXgkHhARFHf5pE7KbXOLE6TXW0A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.js"></script>
    <script src="https://cdn.datatables.net/2.0.8/js/dataTables.bootstrap5.js"></script>
    <script src="https://cdn.datatables.net/select/2.0.3/js/dataTables.select.js"></script>
    <script src="https://cdn.datatables.net/select/2.0.3/js/select.bootstrap5.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.8/css/dataTables.bootstrap5.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/select/2.0.3/css/select.bootstrap5.css">


</head>
<body>
<div class="wrapper">
    <!-- Sidebar  -->
    <nav id="sidebar">
        <div class="sidebar-header">
            <img src="/img/logo.jpg" alt="">
        </div>

        <ul class="list-unstyle components">
            <li>
                <i class="fa-solid fa-chart-simple"></i>
                <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">Thống kê</a>
            </li>
            <li>
                <i class="fa-solid fa-money-bill"></i>
                <a href="/hoa-don/create">Bán hàng tại quầy</a>
            </li>
            <li>
                <img src="/img/order.png" alt="">
                <a href="/hoa-don/index" data-toggle="collapse" aria-expanded="false">Quản lí đơn hàng</a>
            </li>
            <li>
                <img src="/img/icon_ao.jpg" alt="">
                <a href="/SanPhamChiTiet/list">Quản lí sản phẩm</a>
            </li>
            <li>
                <i class="fa-solid fa-retweet"></i>
                <a href="#">Trả hàng</a>
            </li>
            <li>
                <i class="fa-solid fa-ticket"></i>
                <a href="#">Giảm giá</a>
            </li>
            <li>
                <i class="fa-solid fa-user-group"></i>
                <a href="#">Tài khoản</a>
            </li>
            <li>
                <i class="fa-solid fa-user-group"></i>
                <a href="/khach-hang/index">Khách hàng</a>
            </li>
        </ul>
    </nav>
    <div class="w-100">
        <div class="d-flex justify-content-between w-100 align-items-center nav-bar">
            <button type="button" id="sidebarCollapse" style="height: 40px; color: black; background-color: transparent !important;" class="btn">
                <i class="fas fa-align-left"></i>
            </button>
            <div class="d-flex gap-3">
                <i class="fa-regular fa-bell"></i>
                <a href="#">Tài khoản</a>
            </div>

        </div>

        <!-- content -->
        <div style="width: 100%; background-color: #eee; padding: 20px;">
            <h3>Quản lí đơn hàng</h3>

                <div class="filter">
                    <div class="w-100 first">

                        <div>
                            Trạng thái:
                            <select name="status" id="status">
                                <option value="">Tất cả đơn hàng</option>
                                <c:forEach var="trangThai" items="${trangThais}">
                                    <option value="${trangThai.ID}">${trangThai.tenTrangThai}</option>

                                </c:forEach>
                            </select>
                        </div>
                        <div>
                            Loại hóa đơn:
                            <select name="loaiHoaDon" id="status2" class="category" >
                                <option value="">Tất cả loại đơn hàng</option>
                                <option value="0">Trực tuyến</option>
                                <option value="1">Tại quầy</option>
                            </select>
                        </div>

                        <div class="d-flex justify-content-between gap-4">
                            <a href="/hoa-don/create"><div class="function">Tạo hóa đơn</div></a>
                        </div>

                    </div>
                    <form action="/hoa-don/filter">
                    <div class="w-100 second mt-4">

                        <div class="text-container align-items-center" style="width: 320px">
                            <svg focusable="false" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M15.5 14h-.79l-.28-.27A6.471 6.471 0 0 0 16 9.5 6.5 6.5 0 1 0 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path></svg>
                            <input type="text" name="search" id="search-input" placeholder="Tìm kiếm hóa đơn">
                        </div>
                        <div class="align-items-center w-50 date">
                            Từ ngày:
                            <input name="batDau" type="date" placeholder="Từ ngày">
                            Đến ngày:
                            <input name="ketThuc" type="date" placeholder="Đến ngày">
                        </div>
                        <button type="submit" class="function">Tìm kiếm</button>

                    </div>
                    </form>
                </div>

            <div class="w-100 mt-5 d-flex justify-content-center align-items-center" style="background-color: #fff; border-radius: 10px;">
                <table id="example" class="table table-striped p-5" style="width:100%">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Mã</th>
                        <th>Tổng SP</th>
                        <th>Tổng số tiền</th>
                        <th>Tên khách hàng</th>
                        <th>Ngày tạo</th>
                        <th>Loại hóa đơn</th>
                        <th>Trạng thái</th>
                        <th>Hành động</th>
                    </tr>
                    </thead>
                    <tbody class="index">
                    <c:forEach var="hoaDon" items="${hoaDons}" varStatus="status">
                    <tr>
                        <td>${status.index +1}</td>
<%--                        <td>${hoaDon.ID}</td>--%>
                        <td>${hoaDon.maHoaDon}</td>
                        <td>${hoaDon.tongSp}</td>
                        <td>${hoaDon.tongTien}</td>
                        <td>${hoaDon.tenKH}</td>
                        <td>${hoaDon.ngayTao}</td>
                        <td>${hoaDon.loaiHoaDon ? 'Tại quầy':'Trực tuyến'}</td>
                        <td>${hoaDon.trangThaiDon}</td>

                        <td style="text-align: center;"><a href="donHang/${hoaDon.ID}"><i class="fa-solid fa-pen-to-square" style="color: purple; font-size: 18px;"></i></a></td>
                    </tr>
                    </c:forEach>


                </table>
            </div>

        </div>

    </div>

</div>
</body>
</html>

<script>
    $(document).ready(function () {
        $('#sidebarCollapse').on('click', function () {
            $('#sidebar').toggleClass('active');
        });
    });

     new DataTable('#example', {
         select: false,
         searching: true,
         language:{
             search: "Tìm kiếm theo từ khóa:",
             lengthMenu: "_MENU_ đơn hàng mỗi trang",
             info: "Hiển thị từ _START_ đến _END_ của _TOTAL_ đơn hàng",
             infoEmpty: "Không có hóa đơn nào",
         }
     });

</script>
<script>
    function filterTable() {
        var select = document.getElementById("status2")
        var filter = select.value;
        var table = document.getElementById("example");
        var tr = table.getElementsByTagName("tr");

        for (var i = 1; i < tr.length; i++) {
            var td = tr[i].getElementsByTagName("td")[6];
            if (td) {
                var txtValue = td.textContent || td.innerText;
                if (filter === "") {
                    tr[i].style.display = "";
                } else if (filter === "1" && txtValue === "Tại quầy") {
                    tr[i].style.display = "";
                } else if (filter === "0" && txtValue === "Trực tuyến") {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
    function filterTable2() {
        var select = document.getElementById("status")
        var filter = select.value;
        // var select2 = document.getElementById("status2")
        // var filter2 = select2.value;
        var table = document.getElementById("example");
        var tr = table.getElementsByTagName("tr");

        for (var i = 1; i < tr.length; i++) {
            var td = tr[i].getElementsByTagName("td")[7];
            if (td) {
                var txtValue = td.textContent || td.innerText;
                if (filter === "") {
                    tr[i].style.display = "";
                } else if (filter === "1" && txtValue === "Chờ xác nhận") {
                    tr[i].style.display = "";
                } else if (filter === "2" && txtValue === "Đã xác nhận") {
                    tr[i].style.display = "";
                } else if (filter === "3" && txtValue === "Đang giao hàng") {
                    tr[i].style.display = "";
                } else if (filter === "4" && txtValue === "Giao thành công") {
                    tr[i].style.display = "";
                } else if (filter === "5" && txtValue === "Hoàn thành") {
                    tr[i].style.display = "";
                } else if (filter === "6" && txtValue === "Đơn hàng hủy") {
                    tr[i].style.display = "";
                } else if (filter === "7" && txtValue === "Hoàn trả") {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
            // var td2 = tr[i].getElementsByTagName("td")[6];
            // if (td2) {
            //     var txtValue2 = td.textContent || td.innerText;
            //     if (filter2 === "") {
            //         tr[i].style.display = "";
            //     } else if (filter2 === "1" && txtValue2 === "Tại quầy") {
            //         tr[i].style.display = "";
            //     } else if (filter2 === "0" && txtValue2 === "Trực tuyến") {
            //         tr[i].style.display = "";
            //     } else {
            //         tr[i].style.display = "none";
            //     }
            // }
        }
    }
</script>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const nameFilter = document.getElementById('status');
        const countryFilter = document.getElementById('status2');
        const table = document.getElementById('example');
        const rows = table.getElementsByTagName('tbody')[0].getElementsByTagName('tr');

        function filterTable() {
            const nameValue = nameFilter.value;
            const countryValue = countryFilter.value;

            for (let i = 0; i < rows.length; i++) {
                const nameCell = rows[i].getElementsByTagName('td')[7].textContent.toLowerCase();
                const countryCell = rows[i].getElementsByTagName('td')[6].textContent.toLowerCase();

                //let nameMatch = nameValue === '' || nameCell.includes(nameValue);
                //let countryMatch = countryValue === '' || countryCell.includes(countryValue);
                let nameMatch = true;
                let countryMatch = true;
                var td = rows[i].getElementsByTagName("td")[7];
                var txtValue = td.textContent || td.innerText;
                if (nameValue === "") {
                    nameMatch = true;
                } else if (nameValue === "1" && txtValue === "Chờ xác nhận") {
                    nameMatch = true;
                } else if (nameValue === "2" && txtValue === "Đã xác nhận") {
                    nameMatch = true;
                } else if (nameValue === "3" && txtValue === "Đang giao hàng") {
                    nameMatch = true;
                } else if (nameValue === "4" && txtValue === "Giao thành công") {
                    nameMatch = true;
                } else if (nameValue === "5" && txtValue === "Hoàn thành") {
                    nameMatch = true;
                } else if (nameValue === "6" && txtValue === "Đơn hàng hủy") {
                    nameMatch = true;
                } else if (nameValue === "7" && txtValue === "Hoàn trả") {
                    nameMatch = true;
                } else {
                    nameMatch = false;
                }
                var td2 = rows[i].getElementsByTagName("td")[6];
                var txtValue2 = td2.textContent || td2.innerText;
                if (countryValue === "") {
                    countryMatch = true;
                } else if (countryValue === "1" && txtValue2 === "Tại quầy") {
                    countryMatch = true;
                } else if (countryValue === "0" && txtValue2 === "Trực tuyến") {
                    countryMatch = true;
                } else {
                    countryMatch = false;
                }
                if (nameMatch  && countryMatch) {
                    rows[i].style.display = '';
                } else {
                    rows[i].style.display = 'none';
                }
            }
        }

        nameFilter.addEventListener('change', filterTable);
        countryFilter.addEventListener('change', filterTable);
    });
</script>
