import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ny_times_test/views/utils/contants.dart';

class ArticleItemWidget extends StatelessWidget {
  const ArticleItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundColor: kGreyColor,
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Grichka and Igor Bogdanoff, Twins in an Uneasy Spotlight, Die at 72',
                  style: Theme.of(context).textTheme.headline5,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'By Clay Risen',
                  style: Theme.of(context).textTheme.subtitle2,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "THOMPSON",
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/images/calendar.png',
                          fit: BoxFit.contain,
                          width: 20,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          '2019-02-23',
                          style: Theme.of(context).textTheme.subtitle2,
                          maxLines: 2,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: kBlackGreyColor,
            size: 18,
          )
        ],
      ),
    );
  }
}
