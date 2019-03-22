$(document).ready(function(){
    oneCategory();
    $("select[name='oneCategoryId']").change(function(){oneCategory()});
    function oneCategory(){
        var oneCategoryId= $("select[name='oneCategoryId']").val();
        $.getJSON("/manage/subclass",{"oneCategoryId":oneCategoryId},function(date){
            $("select[name='twoCategoryId']").find("option").remove();
            $("select[name='proVersionsId']").find("option").remove();
            $("select[name='productColorId']").find("option").remove();
            for(var i=0;i<date[0].twoCategory.length;i++){
                $option="<option value="+date[0].twoCategory[i].twoCategoryId+">"+date[0].twoCategory[i].twoCategoryName+"</option>";
                $("select[name='twoCategoryId']").append($option);
            }
            for(var i=0;i<date[0].productColor.length;i++){
                $option="<option value="+date[0].productColor[i].productColorId+">"+date[0].productColor[i].productColorName+"</option>";
                $("select[name='productColorId']").append($option);
            }
            for(var i=0;i<date[0].proVersions.length;i++){
                $option="<option value="+date[0].proVersions[i].proVersionsId+">"+date[0].proVersions[i].proVersionsName+"</option>";
                $("select[name='proVersionsId']").append($option);
            }
        })
    }
});