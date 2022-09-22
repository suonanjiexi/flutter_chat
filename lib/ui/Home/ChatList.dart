import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: 380,
      child: Column(
        children: [
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              children: [
                const SizedBox(
                  width: 300,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(12, 8, 2, 12),
                    child: TextField(
                      showCursor: false,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          fontSize: 12,
                        ),
                        fillColor: Colors.black12,
                        filled: true,
                        prefixIcon: Icon(
                          color: Colors.black38,
                          Icons.search_sharp,
                          size: 22,
                        ),
                        hintText: "搜索",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 0.2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(
                            color: Colors.green,
                            width: 0.8,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 8, 2, 12),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(8)),
                    child: const Icon(Icons.add),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: 200,
              itemBuilder: ((context, index) {
                return Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: AssetImage(
                            "images/WechatIMG94557.jpeg",
                          ),
                        ),
                      ),
                    ),
                    title: const Text("索南杰夕"),
                    subtitle: const Text(
                        overflow: TextOverflow.ellipsis,
                        "hi 在吗？有个事情和你聊聊。看到请回复!"),
                    trailing: const Text(
                        style: TextStyle(fontSize: 10), "2022/09/21"),
                    onTap: () {
                      print("点击了");
                    },
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
