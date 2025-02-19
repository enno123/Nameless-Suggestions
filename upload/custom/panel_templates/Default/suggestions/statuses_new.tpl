{include file='header.tpl'}

<body id="page-top">

<!-- Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    {include file='sidebar.tpl'}

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main content -->
        <div id="content">

            <!-- Topbar -->
            {include file='navbar.tpl'}

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">{$SUGGESTIONS}</h1>
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{$PANEL_INDEX}">{$DASHBOARD}</a></li>
                        <li class="breadcrumb-item">{$SUGGESTIONS}</li>
							<li class="breadcrumb-item active">{$STATUSES}</li>
                    </ol>
                </div>

                <!-- Update Notification -->
                {include file='includes/update.tpl'}

                <div class="card shadow mb-4">
                    <div class="card-body">
                        <h5 style="display:inline">{$CREATING_NEW_STATUS}</h5>
                        <div class="float-md-right">
                                <a href="{$BACK_LINK}" class="btn btn-warning">{$BACK}</a>
                            </div>
                        <hr />

                        <!-- Success and Error Alerts -->
                        {include file='includes/alerts.tpl'}

                        <form action="" method="post">
                            <div class="form-group">
                                <label for="InputName">{$STATUS_NAME}</label>
                                <input type="text" name="name" class="form-control" id="InputName" placeholder="{$STATUS_NAME}">
                            </div>
                            <div class="form-group">
                                <label for="InputHtml">{$STATUS_HTML}</label>
                                <input type="text" name="html" class="form-control" id="InputHtml" placeholder="{$STATUS_HTML}">
                            </div>
                            <div class="form-group custom-control custom-switch">
                                <input id="inputOpen" name="open" type="checkbox" class="custom-control-input" />
                                <label class="custom-control-label" for="inputOpen">{$MARKED_AS_OPEN}</label>
                            </div>
                            <div class="form-group">
                                <input type="hidden" name="token" value="{$TOKEN}">
                                <input type="submit" class="btn btn-primary" value="{$SUBMIT}">
                            </div>
                        </form>
    
                        {if !$PREMIUM}
                            <center><p>Suggestion Module by <a href="https://partydragen.com/" target="_blank">Partydragen</a></p></center>
                        {/if}
                    </div>
                </div>

                <!-- Spacing -->
                <div style="height:1rem;"></div>

                <!-- End Page Content -->
            </div>

            <!-- End Main Content -->
        </div>

        {include file='footer.tpl'}

        <!-- End Content Wrapper -->
    </div>

    <!-- End Wrapper -->
</div>

{include file='scripts.tpl'}

</body>
</html>