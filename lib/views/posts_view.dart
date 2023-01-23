import 'package:addiction_app_v1/COMMON/loader.dart';
import 'package:flutter/material.dart';
import '../COMMON/constants.dart';
import '../Models/send_post_model.dart';
import '../api/post_api.dart';

class PostsView extends StatefulWidget {
  const PostsView({super.key});

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getPosts(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data!.data!.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Text("${snapshot.data!.data![index].body}"),
                    );
                  },
                )
              : spinkit;
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var result = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SendPost()),
          );
          if (result != null && result is bool && result) {
            setState(() {});
          }
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SendPost extends StatefulWidget {
  const SendPost({super.key});

  @override
  State<SendPost> createState() => _SendPostState();
}

class _SendPostState extends State<SendPost> {
  bool isLoading = false;
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _ratingController = TextEditingController();
  final _focusRating = FocusNode();
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(children: [
        Form(
          key: _key,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: w / 1.2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: _ratingController,
                  focusNode: _focusRating,

                  // The validator receives the text that the user has entered.
                  validator: ((value) {
                    if ((value == null || value == "")) {
                      return "this field is required";
                    }
                    return null;
                  }),
                  maxLength: 150,
                  maxLines: 7,
                  decoration: InputDecoration(
                    errorMaxLines: 1,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      // width: 0.0 produces a thin "hairline" border
                      borderSide:
                          const BorderSide(color: Colors.yellow, width: 2.2),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      // width: 0.0 produces a thin "hairline" border
                      borderSide:
                          const BorderSide(color: Colors.red, width: 0.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      // width: 0.0 produces a thin "hairline" border
                      borderSide:
                          const BorderSide(color: Colors.red, width: 0.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      // width: 0.0 produces a thin "hairline" border
                      borderSide:
                          const BorderSide(color: Colors.yellow, width: 2.2),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow, width: 2.2),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                    labelText: "Post Body",
                  ),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  minimumSize: Size(w / 1.4, 50),
                  backgroundColor: const Color(0xFFD1B000), //#D1B000
                  elevation: 0,
                ),
                onPressed: () async {
                  _focusRating.unfocus();
                  if (_key.currentState!.validate()) {
                    setState(() {
                      isLoading = true;
                    });
                    SendPostModel model = SendPostModel();
                    model.body = _ratingController.text;
                    model.userId = StaticValues.userId;
                    var response = await sendPost(model);
                    if (response != null) {
                      if (response.isSuccess!) {
                        Navigator.of(context).pop(true);
                      } else {
                        showToast(false, response.messages[0]['message']);
                        response.messages[0]['message'];
                      }
                    }
                    setState(() {
                      isLoading = false;
                    });
                  }
                },
                child: const Text("Submit")),
          ]),
        ),
        if (isLoading) spinkit
      ]),
    );
  }
}
