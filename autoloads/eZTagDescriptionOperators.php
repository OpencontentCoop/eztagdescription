<?php

class eZTagDescriptionOperators
{
    function operatorList()
    {
        return array(
            'tag_description',
        );
    }

    function namedParameterPerOperator()
    {
        return true;
    }

    function namedParameterList()
    {
        return array(
            'tag_description' => array(
                'tag_id' => array('type' => 'integer', 'required' => true),
                'locale' => array('type' => 'string', 'required' => true),
            ),
        );
    }

    function modify(
        $tpl,
        $operatorName,
        $operatorParameters,
        $rootNamespace,
        $currentNamespace,
        &$operatorValue,
        $namedParameters
    )
    {
        switch ($operatorName) {

            case 'tag_description':
                $tagDescription = eZTagsDescription::fetch((int)$namedParameters['tag_id'], $namedParameters['locale']);
                if ($tagDescription instanceof eZTagsDescription) {
                    $operatorValue = $tagDescription->attribute('description_text');
                } else {
                    $operatorValue = '';
                }
                break;

        }
    }
}
