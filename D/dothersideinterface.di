extern(C)
{

void dos_guiapplication_create();
void dos_guiapplication_exec();
void dos_guiapplication_delete();

void dos_quickview_create(ref void*);
void dos_quickview_show(void*);
void dos_quickview_source(void*, ref char *, ref int);
void dos_quickview_set_source(void*, immutable (char)* filename);
void dos_quickview_rootContext(void*, ref void*);
void dos_quickview_delete(void*);

void dos_chararray_create(ref char*);
void dos_chararray_create(ref char*, int size);
void dos_chararray_delete(ref char*);

void dos_qmlcontext_baseUrl(void*, ref char*, ref int);
void dos_qmlcontext_setcontextproperty(void*, immutable (char)*, void*);

void dos_qvariant_create(ref void*);
void dos_qvariant_create_int(ref void*, int value);
void dos_qvariant_create_bool(ref void*, bool value);
void dos_qvariant_create_string(ref void*, immutable(char)* value);
void dos_qvariant_create_qobject(ref void*, void*);
void dos_qvariant_toInt(void*, ref int);
void dos_qvariant_setInt(void*, int);
void dos_qvariant_toBool(void*, ref bool);
void dos_qvariant_setBool(void*, bool);
void dos_qvariant_toString(void*, ref char*, ref int);
void dos_qvariant_setString(void*, immutable(char)*);
void dos_qvariant_isnull(void*, ref bool result);
void dos_qvariant_delete(void*);

void dos_qobject_create(ref void*, void* dobject, void function (void*, void*, int , void**));
void dos_qobject_slot_create(void*, immutable (char)* name, int, int*, ref int);
void dos_qobject_signal_create(void*, immutable(char)* name, int, int*, ref int);
void dos_qobject_signal_emit(void*, immutable(char)* name, int, void**);
void dos_qobject_delete(void*);

}