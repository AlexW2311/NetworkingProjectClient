
var _id = ds_map_find_value(async_load, "id");
if (_id == username)
{
    if (ds_map_find_value(async_load, "status"))
    {
        if (ds_map_find_value(async_load, "result") != "")
        {
            obj_gameController.username = ds_map_find_value(async_load, "result");
        }
    }
}