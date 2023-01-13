import 'package:flutter/material.dart';
import 'package:hello_flutter2/data/model/photo.dart';
import 'package:hello_flutter2/ui/search/search_view_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final viewModel = SearchViewModel();

  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('이미지 검색'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.teal),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                hintText: 'Search',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () async {
                    setState(() {
                      viewModel.isLoading = true;
                    });

                    print('확인!!!! : ${textController.text}');
                    await viewModel.search('아이유');

                    // 렌더링 다시
                    setState(() {
                      viewModel.isLoading = false;
                    });
                  },
                ),
                suffixStyle: const TextStyle(color: Colors.green),
              ),
            ),
            const SizedBox(height: 16),
            if (viewModel.isLoading) const CircularProgressIndicator(),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemCount: viewModel.photos.length,
                itemBuilder: (BuildContext context, int index) {
                  final photo = viewModel.photos[index];
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.network(
                      photo.url,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
