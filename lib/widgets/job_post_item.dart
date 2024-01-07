import 'package:flutter/material.dart';
import '../model/job_post.dart';
import '../constants/colors.dart';

class JobPostItem extends StatelessWidget {
  final JobPost jobPost;
  final onJobPostChanged;

  const JobPostItem({
    Key? key,
    required this.jobPost,
    required this.onJobPostChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ExpansionTile(
        onExpansionChanged: (bool expanded) {
          if (expanded) {
            onJobPostChanged(jobPost);
          }
        },
        tilePadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        backgroundColor: Color(0xFFEEEFF5), // Change the color as needed
        title: Text(
          jobPost.job_title,
          style: TextStyle(
            fontSize: 18, // Increase the font size as needed
            color: tdBlack,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Job Level: ${jobPost.job_level}"),
                      Text("Location: ${jobPost.job_location}"),
                    ],
                  ),
                ),
                SizedBox(width: 16), // Add spacing between the columns
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Emp Type: ${jobPost.employment_type}"),
                      Text("Salary: ${jobPost.salary}"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
