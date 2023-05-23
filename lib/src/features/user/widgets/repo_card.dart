import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_users/src/features/user/models/repo/repo.dart';
import 'package:url_launcher/url_launcher.dart';

class RepoCard extends StatelessWidget {
  final Repo repo;

  const RepoCard({super.key, required this.repo});

  void launchRepoUrl(String url) async {
    final Uri repoUrl = Uri.parse(url);

    if (!await launchUrl(repoUrl)) {
      throw Exception('Could not launch $repoUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 3,
                spreadRadius: 2,
                offset: const Offset(2, 3))
          ]),
      child: Column(children: [
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.green.shade300,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 3,
                      spreadRadius: 0.5,
                      offset: const Offset(2, 2))
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  repo.name,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                OutlinedButton(
                    onPressed: () => launchRepoUrl(repo.url),
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.green,
                        side: BorderSide.none,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 5),
                        minimumSize: Size.zero),
                    child: const Text(
                      'Show in web',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ))
              ],
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber.shade400,
                  ),
                  Text(
                    repo.stargazersCount.toString(),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              RichText(
                  text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      text: 'Language: ',
                      children: [
                    TextSpan(
                        text: repo.language,
                        style: const TextStyle(fontWeight: FontWeight.bold))
                  ])),
              RichText(
                  text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      text: 'Is private: ',
                      children: [
                    TextSpan(
                        text: repo.private.toString(),
                        style: const TextStyle(fontWeight: FontWeight.bold))
                  ])),
            ],
          ),
        )
      ]),
    );
  }
}
