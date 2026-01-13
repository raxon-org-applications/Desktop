{{$register = Package.Raxon.App.Desktop:Init:register()}}
{{if(!is.empty($register))}}
{{Package.Raxon.App.Desktop:Import:role.system()}}
{{$flags = flags()}}
{{$options = options()}}
{{Package.Raxon.App.Desktop:Main:install($flags, $options)}}
{{/if}}