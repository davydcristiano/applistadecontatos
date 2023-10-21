import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactList(),
    );
  }
}

class Contact {
  String name;
  String phoneNumber;
  String imageUrl;

  Contact(
      {required this.name, required this.phoneNumber, required this.imageUrl});
}

// ignore: must_be_immutable
class ContactList extends StatelessWidget {
  //array da lista de contatos
  List<Contact> contacts = [
    Contact(
      name: "Luana",
      phoneNumber: "+55 123 456 789",
      imageUrl:
          "https://www.wefashiontrends.com/wp-content/uploads/2019/03/pose-fotos-de-perfil-ideias.jpg", // Substitua pela URL da imagem do contato
    ),
    Contact(
      name: "Larissa",
      phoneNumber: "+55 123 456 789",
      imageUrl:
          "https://i.pinimg.com/736x/53/e2/11/53e2111c6d0a56692c7a7d82c8825d54.jpg", // Substitua pela URL da imagem do contato
    ),
    Contact(
      name: "Roberta",
      phoneNumber: "+55 123 456 789",
      imageUrl:
          "https://www.wefashiontrends.com/wp-content/uploads/2020/01/deisi-remus-instagram-influencer.jpg", // Substitua pela URL da imagem do contato
    ),
    Contact(
      name: "Cristina",
      phoneNumber: "+55 123 456 789",
      imageUrl:
          "https://www.wefashiontrends.com/wp-content/uploads/2019/03/ideias-fotos-de-perfil-pose.jpg", // Substitua pela URL da imagem do contato
    ),
    Contact(
      name: "Suelen",
      phoneNumber: "+55 123 456 789",
      imageUrl:
          "https://www.wefashiontrends.com/wp-content/uploads/2019/03/foto-perfil-pose-com-lingua-pra-fora.jpg", // Substitua pela URL da imagem do contato
    ),
    Contact(
      name: "Daniela",
      phoneNumber: "+55 123 456 789",
      imageUrl:
          "https://i.pinimg.com/564x/9d/63/a4/9d63a439207ad10a827388da3fe20c4b.jpg", // Substitua pela URL da imagem do contato
    ),
    Contact(
      name: "Carla",
      phoneNumber: "+55 123 456 789",
      imageUrl:
          "https://i.pinimg.com/564x/c5/80/92/c58092188d61d6beb9924d816f021cd1.jpg", // Substitua pela URL da imagem do contato
    ),
    Contact(
      name: "Luana",
      phoneNumber: "+55 123 456 789",
      imageUrl:
          "https://www.wefashiontrends.com/wp-content/uploads/2019/03/pose-fotos-de-perfil-ideias.jpg", // Substitua pela URL da imagem do contato
    ),
    Contact(
      name: "Larissa",
      phoneNumber: "+55 123 456 789",
      imageUrl:
          "https://i.pinimg.com/736x/53/e2/11/53e2111c6d0a56692c7a7d82c8825d54.jpg", // Substitua pela URL da imagem do contato
    ),
    Contact(
      name: "Roberta",
      phoneNumber: "+55 123 456 789",
      imageUrl:
          "https://www.wefashiontrends.com/wp-content/uploads/2020/01/deisi-remus-instagram-influencer.jpg", // Substitua pela URL da imagem do contato
    ),
    Contact(
      name: "Cristina",
      phoneNumber: "+55 123 456 789",
      imageUrl:
          "https://www.wefashiontrends.com/wp-content/uploads/2019/03/ideias-fotos-de-perfil-pose.jpg", // Substitua pela URL da imagem do contato
    ),
    Contact(
      name: "Suelen",
      phoneNumber: "+55 123 456 789",
      imageUrl:
          "https://www.wefashiontrends.com/wp-content/uploads/2019/03/foto-perfil-pose-com-lingua-pra-fora.jpg", // Substitua pela URL da imagem do contato
    ),
    Contact(
      name: "Daniela",
      phoneNumber: "+55 123 456 789",
      imageUrl:
          "https://i.pinimg.com/564x/9d/63/a4/9d63a439207ad10a827388da3fe20c4b.jpg", // Substitua pela URL da imagem do contato
    ),
    Contact(
      name: "Carla",
      phoneNumber: "+55 123 456 789",
      imageUrl:
          "https://i.pinimg.com/564x/c5/80/92/c58092188d61d6beb9924d816f021cd1.jpg", // Substitua pela URL da imagem do contato
    ), // Adicione mais contatos aqui
  ];

  ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Lista de contatos")),
      body: ContactListView(contacts: contacts),
    );
  }
}

class ContactListView extends StatelessWidget {
  final List<Contact> contacts;

  const ContactListView({super.key, required this.contacts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: contacts.length,
      itemBuilder: (context, index) {
        final contact = contacts[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(contact.imageUrl),
          ),
          title: Text(contact.name),
          subtitle: Text(contact.phoneNumber),
        );
      },
    );
  }
}
