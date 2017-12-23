<?php
/**
 * Created by JetBrains PhpStorm.
 * User: nikhilk
 * Date: 6/6/13
 * Time: 6:38 PM
 * To change this template use File | Settings | File Templates.
 */

/**
 * @param $dom
 * @return string
 */
function domSump($dom) {
    if ($classname = get_class($dom)) {
        $response = '';
        switch (true) {
            case ($dom instanceof DOMDocument):
                $response = $dom->saveXML($dom);
                break;
            case ($dom instanceof DOMElement):
            case ($dom instanceof DOMAttr):
            $response = $dom->ownerDocument->saveXML($dom);
                break;
            case ($dom instanceof DOMNodeList):
                for ($i = 0; $i < $dom->length; $i++) {
                    $response .=  $dom->item($i)->ownerDocument->saveXML($dom->item($i));
                }
                break;
            default:
                $response = "Instance of unknown class";
        }
    } else {
        $response = 'no elements...';
    }
    return $response;
}
