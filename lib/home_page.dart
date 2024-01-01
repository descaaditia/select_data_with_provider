import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:select_data_with_provider/provider.dart';

class HomePage extends StatefulWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<DataProvider>(context, listen: false).getDataProvider();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("JSON Parsing")),
      body: Consumer<DataProvider>(builder: (context, value, child) {
        final datafinal = value.allDataModel;
        final datainfo = datafinal.info;
        final datapengalaman = datafinal.pengalaman;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama : ${datafinal.nama}"),
            Text("Umur : ${datafinal.umur}"),
            Text("Alamat : ${datainfo.alamat}"),
            Text("Wa : ${datainfo.wa}"),
            Text("Pengalaman :"),
            Expanded(
              child: ListView.builder(
                  itemCount: datapengalaman.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("Kantor : ${datapengalaman[index].kantor}"),
                      subtitle: Text(
                          "Lama Pengalaman : ${datapengalaman[index].lamapengalaman}"),
                      trailing:
                          Text("Profesi : ${datapengalaman[index].profesi}"),
                    );
                  }),
            ),
          ],
        );
      }),
    );
  }
}
