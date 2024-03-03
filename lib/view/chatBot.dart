import 'package:flutter/material.dart';

class chatBot extends StatelessWidget {
  static void openChatScreen(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled:
          true, // This allows the bottom sheet to be full-screen.
      builder: (_) => SingleChildScrollView(
        child: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: ChatScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => openChatScreen(context),
          child: Text('Open Chat'),
        ),
      ),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<Map<String, dynamic>> messages = [
    {
      'text': 'ما هو أفضل وقت للبدء في الاستثمار في السعودية في سنة ٢٠٢٤؟',
      'isUser': false,
      'timestamp': '04:12 pm',
    },
    {
      'text':
          "عام ٢٠٢٤ يُعتبر وقتًا مناسبًا للاستثمار في السعودية بفضل الإصلاحات الاقتصادية وتوقعات نمو الاقتصاد بنسبة 3.2%. المملكة تُعتبر وجهة استثمارية واعدة في قطاعات مثل الطاقة والرعاية الصحية والسياحة، لكن من الضروري إجراء دراسة جدوى قبل الاستثمار",
      'isUser': true,
      'timestamp': '04:13 pm',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.75,
      child: Column(
        children: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('المساعد الذكي',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'TajawalBold',
                      color: Color.fromARGB(255, 0, 0, 0))),
            ),
          ),
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[messages.length - 1 - index];
                return ListTile(
                  leading: message['isUser']
                      ? null
                      : Image.asset('assets/images/chatbot-2.png'),
                  trailing: message['isUser']
                      ? Image.asset('assets/images/user-icon.png')
                      : null,
                  title: Align(
                    alignment: message['isUser']
                        ? Alignment.topLeft
                        : Alignment.topRight,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      margin: EdgeInsets.symmetric(vertical: 4),
                      decoration: BoxDecoration(
                        color: message['isUser']
                            ? Color(0xFF469C8A)
                            : Color(0xFF99b4ae),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        crossAxisAlignment: message['isUser']
                            ? CrossAxisAlignment.start
                            : CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            message['text'],
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'TajawalBold',
                                color: Colors.white),
                          ),
                          SizedBox(height: 5),
                          Text(
                            message['timestamp'],
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              style: TextStyle(
                fontFamily: 'TajawalBold',
              ),
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: 'أكتب سؤالك',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.grey[200],
                filled: true,
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
