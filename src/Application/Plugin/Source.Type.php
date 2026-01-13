<?php
namespace Plugin;

use Raxon\Module\File;
trait Source_Type {

    public function source_type(string $url=''): string
    {
        $options = [];
        $options['url'] = $url;
        if(!empty($options['url'])){
            $url = $options['url'];
            $extension = File::extension($url);
            switch($extension){
                case 'wav' :
                    return 'audio/wav';
                    break;
                case 'ogg' :
                    return 'audio/ogg';
                    break;
                case 'mp3' :
                    return 'audio/mp3';
                    break;
                default:
                    return '';
            }
        } else {
            return '';
        }
    }

}