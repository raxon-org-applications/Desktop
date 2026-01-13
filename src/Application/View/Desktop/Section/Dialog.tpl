{{RAX}}
<div class="dialog dialog-{{config('controller.name')}}-main">
    <div class="head" data-title="Audio player | {{$request.file|>file.basename}}">
        <h1><img src="{{route.get(route.prefix() + '-application-audio-player-icon')}}" class="icon" /> Audio player</h1>
        <span class="close"><i class="fas fa-window-close"></i></span>
        <span class="minimize"><i class="far fa-window-minimize"></i></span>
    </div>
    <div class="menu">
        <ul>
            <li class="file">File</li>
        </ul>
        <div class="menu-file-protector display-none">
        </div>
        <div class="menu-file display-none">
            <ul>
                /*
                <li>New</li>
                <li>Open</li>
                <li class="menu-file-save">Save</li>
                <li>Save as</li>
                <li>Print</li>
                */
                <li class="menu-file-exit">Exit</li>
            </ul>
        </div>
    </div>
    <div class="menu-application-audio-player">
        <ul>
            <li>{{$request.file|>file.basename}}</li>
        </ul>
    </div>
    <div class="body">
        {{$source.request = $request.file}}
        {{$source.request = $source.request|>url.encode}}
        {{$source.src = server.url('api') + 'FileSystem/?url='+ $source.request}}
        {{$source.type = source.type($request.file)}}
        <input type="hidden" name="node.url" value="{{$request.file}}" />
        <input type="hidden" name="node.source" value="{{$source.src}}" />
        <input type="hidden" name="node.type" value="{{$source.type}}" />
        /*
        <audio controls crossorigin="anonymous" autoplay>
            <source data-src="{{$source.src}}" type="{{$source.type}}">

            Your browser does not support the audio element.
        </audio>
        */
    </div>
    <div class="footer">

    </div>
</div>