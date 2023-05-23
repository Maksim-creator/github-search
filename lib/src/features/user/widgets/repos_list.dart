import 'package:flutter/material.dart';
import 'package:github_users/src/api/user.dart';
import 'package:github_users/src/features/user/models/repo/repo.dart';
import 'package:github_users/src/features/user/user.controller.dart';
import 'package:github_users/src/features/user/widgets/repo_card.dart';

class ReposList extends StatelessWidget {
  final String username;

  const ReposList({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        child: FutureBuilder(
            future: UserController().getRepositories(username),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (snapshot.hasData) {
                if (snapshot.connectionState == ConnectionState.done) {
                  final List<Repo> repositories = snapshot.data!;
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: repositories.length,
                      itemBuilder: (context, index) {
                        final Repo repository = repositories[index];
                        return RepoCard(repo: repository);
                      });
                } else {
                  return Text('No repositories were found');
                }
              }

              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              }

              return Text('Something wents wrong. Try again later');
            }),
      ),
    );
  }
}
