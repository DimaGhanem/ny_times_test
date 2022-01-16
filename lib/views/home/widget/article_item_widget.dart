import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ny_times_test/models/article.dart';
import 'package:ny_times_test/views/utils/contants.dart';

class ArticleItemWidget extends StatelessWidget {
  final Article article;
  const ArticleItemWidget({Key? key, required this.article}) : super(key: key);

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
                  article.title,
                  style: Theme.of(context).textTheme.headline5,
                  maxLines: 2,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  article.byline,
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
                        article.section,
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
                          article.publishedDate,
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
