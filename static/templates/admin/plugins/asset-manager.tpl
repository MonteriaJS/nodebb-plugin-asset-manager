<div class="row">
	<div class="col-sm-2 col-xs-12 settings-header">Gestionar archivos</div>
	<div class="col-sm-10 col-xs-12">
		<div class="panel panel-default">
			<div class="panel-body" component="asset-manager/files">
			<!-- IF files.length -->
			<!-- IMPORT admin/partials/asset-manager-list.tpl -->
			<!-- ELSE -->
			<div class="alert alert-info text-center" component="asset-manager/nofiles">
				No hay archivos que gestionar.
			</div>
			<!-- ENDIF files.length -->
			</div>
		</div>
	</div>
</div>

<div class="row">
	<div class="col-sm-2 col-xs-12 settings-header">Subir archivo</div>
	<div class="col-sm-10 col-xs-12">
		<form class="panel panel-default" role="form" method="post" action="{config.relative_path}/asset-manager/upload">
			<div class="panel-body">
				<div class="form-group">
					<label for="upload">Subir archivo</label>
					<input type="file" id="upload" name="files[]" class="form-control" />
				</div>
				<div class="form-group">
					<label for="upload:name">Nombre del archivo</label>
					<input type="text" id="upload:name" name="upload:name" class="form-control" />
					<p class="help-block">Opcional</p>
				</div>
				<div class="form-group">
					<label for="upload:description">Descripción</label>
					<textarea id="upload:description" name="upload:description" class="form-control"></textarea>
					<p class="help-block">Opcional</p>
				</div>
				<button class="btn btn-primary" data-action="upload" type="button"><i class="fa fa-plus"></i> Subir</button>
			</div>
		</form>
	</div>
</div>

<form role="form" class="resource-manager-settings">
</form>

<button id="save" class="floating-button mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
	<i class="material-icons">save</i>
</button>
