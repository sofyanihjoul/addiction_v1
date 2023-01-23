import 'package:addiction_app_v1/COMMON/loader.dart';
import 'package:flutter/material.dart';
import '../COMMON/constants.dart';
import '../Models/send_post_model.dart';
import '../api/post_api.dart';
import 'my_Darwer_view.dart';

class PostsView extends StatefulWidget {
  const PostsView({super.key});

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDADBDD),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff245865).withOpacity(0.695),
      ),
      //MENU BAR
      drawer: const MyDarwer(),
      body: FutureBuilder(
        future: getPosts(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? ListView.builder(
                  itemCount: snapshot.data!.data!.length,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        SizedBox(
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 35),
                              child: Card(
                                color: Color(0xff245865),
                                child: const SizedBox(
                                  width: 400,
                                  height: 450,
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 100, 20, 32),
                          child: Text(
                            "${snapshot.data!.data![index].body}",
                            style: TextStyle(
                                fontSize: 25, color: Color(0xffFFFFFF)),
                          ),
                        ),
                      ],
                      // child: Text("${snapshot.data!.data![index].body}"),
                    );
                  },
                )
              //loadeing
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
        backgroundColor: Color(0xff245865),
        child: const Icon(Icons.add),
      ),
    );
  }
}

//send post
class SendPost extends StatefulWidget {
  const SendPost({super.key});

  @override
  State<SendPost> createState() => _SendPostState();
}

//send post
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

          /*
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 300, 20, 32),
                        child: Text("${snapshot.data!.data![index].body}"),
                            style: TextStyle(
                                fontSize: 25, color: Color(0xffFFFFFF)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 340, 20, 32),
                          child: Text(
                            'Family addicti is a broad term ...',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xffFFFFFF)),
                          ),
                        )
                      ],
                    ),
                    //CARD 2
                    Stack(
                      children: [
                        SizedBox(
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 35),
                              child: Card(
                                color: Color(0xff245865),
                                child: const SizedBox(
                                  width: 400,
                                  height: 450,
                                ),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 30, 20, 32),
                          child: Image.asset(
                            'image/depression.jpg',
                            height: 250,
                            width: 380,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 300, 20, 32),
                          child: Text(
                            'Depression',
                            style: TextStyle(
                                fontSize: 25, color: Color(0xffFFFFFF)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 340, 20, 32),
                          child: Text(
                            'Depression is a serious condition that negatively affects...',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xffFFFFFF)),
                          ),
                        )
                      ],
                    ),*/

          //write a post
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
                          const BorderSide(color: Colors.blue, width: 2.2),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      // width: 0.0 produces a thin "hairline" border
                      borderSide:
                          const BorderSide(color: Colors.black, width: 0.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: const BorderSide(
                          color: Color.fromARGB(87, 54, 244, 187), width: 0.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      // width: 0.0 produces a thin "hairline" border
                      borderSide: const BorderSide(
                          color: Color(0xff245865), width: 2.2),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 18, 4, 70), width: 2.2),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(213, 243, 237, 237),
                    labelStyle: TextStyle(color: Colors.black.withOpacity(0.5)),
                    labelText: "Post Body",
                  ),
                ),
              ),
            ),

            //SUBMIT BUTTON
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  minimumSize: Size(w / 1.5, 70),
                  backgroundColor: Color(0xff245865), //#D1B000
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
        //loading
        if (isLoading) spinkit
      ]),
    );
  }
}
