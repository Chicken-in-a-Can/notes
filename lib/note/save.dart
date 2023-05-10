class Save{
    Future<String> get _localPath async{
        final directory = await getApplicationDocumentsDirectory();
        return directory.path;
    }

    Future<File> get _localFile async{
        final path = await _localPath;
        return File('$path/notes.location');
    }
}
