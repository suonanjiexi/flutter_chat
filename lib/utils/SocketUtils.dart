import 'dart:async';

import 'package:flutter_chat/base/Base.dart';
import 'package:web_socket_channel/io.dart';

class SocketUtils {
  // SocketUtils._internal() {}
  // static SocketUtils _socketUtils = SocketUtils._internal();
  // IOWebSocketChannel _channel;
  // Timer _timer;

  // factory SocketUtils() {
  //   return _socketUtils;
  // }
  // //初始化
  // void initSocket() {
  //   _channel = IOWebSocketChannel.connect(Uri.parse(Base.baseSocketUrl));
  //   Map<String, dynamic> params = Map<String, dynamic>();
  //   params["userId"] = "";
  //   params["userName"] = "";
  //   params["token"] = "";
  //   _channel.sink.add(convert.jsonEncode(params));
  //   _channel.stream.listen(this.onData, onError: onError, onDone: onDone);
  //   startCountdownTimer();
  // }

  // //开启心跳
  // void startCountdownTimer() {
  //   const oneSec = Duration(seconds: 10);
  //   var callback = (timer) {
  //     if (_channel == null) {
  //       initSocket();
  //     } else {
  //       if (SpUtils().getUserInfo() != null) {
  //         _channel.sink
  //             .add("10002${SpUtils().getUserInfo().appUserDetailsVO.drvId}");
  //       }
  //     }
  //   };
  //   _timer = Timer.periodic(oneSec, callback);
  // }

  // onDone() {
  //   print("消息关闭");
  //   if (_channel != null) {
  //     _channel.sink.close();
  //     _channel = null;
  //   }
  // }

  // onError(err) {
  //   print("消息错误${err}");
  //   if (_channel != null) {
  //     _channel.sink.close();
  //     _channel = null;
  //   }
  // }

  // onData(event) {
  //   try {
  //     if (event != null) {
  //       switch (event) {
  //         case "10001": //服务器回应正常
  //         case "10002":
  //           break;
  //         case "10005":
  //           this.dispose();
  //           EventBusUtil.getInstance().fire(PageEvent(
  //               eventType: EventBusUtil.UNAUTHORIZED,
  //               data: "已在其他设备上登录\n请重新登录"));
  //           break;
  //         default:
  //           event = convert.jsonDecode(event);
  //           switch (event["msgtype"]) {
  //             //消息类型
  //             case 10006:
  //               //新的通知消息
  //               EventBusUtil.getInstance()
  //                   .fire(PageEvent(eventType: EventBusUtil.NEWMESSAGE));
  //               break;

  //             case 20012:
  //               //通知刷新列表
  //               EventBusUtil.getInstance()
  //                   .fire(PageEvent(eventType: EventBusUtil.REFRESHORDERLIST));
  //               break;
  //             case 20014:

  //               ///有新订单
  //               EventBusUtil.getInstance()
  //                   .fire(PageEvent(eventType: EventBusUtil.NEWORDERMESSAGE));
  //               break;
  //           }
  //       }
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  // void dispose() {
  //   if (_channel != null) {
  //     _channel.sink.close();
  //     print("socket通道关闭");
  //     _channel = null;
  //   }
  //   if (_timer != null) {
  //     _timer.cancel();
  //     _timer = null;
  //   }
  // }
}
