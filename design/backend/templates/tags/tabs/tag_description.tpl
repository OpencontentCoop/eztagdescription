<div class="block">
    {foreach $tag.translations as $translation}
    <fieldset>
        <form method="post" action={concat('tagdescription/update/',$tag.id,'/',$translation.locale)|ezurl}>
            <label for="{concat('tag_description-',$tag.id, $translation.locale)}"><img src="{$translation.locale|flag_icon}" width="18" height="12" alt="{$translation.locale}" />&nbsp; {'Tag description'|i18n( 'bootstrapitalia/tag_description' )}</label>
            <textarea id="{concat('tag_description-',$tag.id, $translation.locale)}" name="TagDescriptionText" class="halfbox">{tag_description($tag.id, $translation.locale)|wash()}</textarea>
            <input class="button" type="submit" name="StoreTagDescriptionButton" value="{'Update'|i18n( 'extension/eztags/tags/view' )}" />
        </form>
    </fieldset>
    {/foreach}
</div>
