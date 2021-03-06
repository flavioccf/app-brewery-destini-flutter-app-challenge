import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
        id: 0,
        storyTitle:
            'O pneu do seu carro estourou no meio do nada, não há sinal de celular. Você decide tentar pegar carona e um cara com um carro velho e enferrujado para. O cara está de chapéu e com olhos sem vida, abre a porta do carro e pergunta: "Quer uma carona?"',
        choice1: 'Sim claro! Obrigado',
        choice1Id: 2,
        choice2: 'Melhor perguntar antes se ele é algum tipo de assassino...',
        choice2Id: 1),
    Story(
        id: 1,
        storyTitle: 'Sem se incomodar com a pergunta ele acena que SIM',
        choice1: 'Um cara honesto... vou entrar no carro!',
        choice1Id: 2,
        choice2: 'Hummm... vou me arriscar tentando trocar o pneu.',
        choice2Id: 3),
    Story(
        id: 2,
        storyTitle:
            'Assim que entram no carro o cara começa a falar o quanto odeia a mãe. Ele fica cada vez mais irritado, pede para você pegar algo no porta-luvas, você encontra uma faca, dois dedos sangrentos e um CD do Elton John. Ele se direciona para o porta-luvas',
        choice1: 'Você entrega o CD do Elton J. e diz: "Eu amo Elton cara!"',
        choice1Id: 5,
        choice2: 'Você se assusta, pega a faca e perfura o homem',
        choice2Id: 4),
    Story(
        id: 3,
        storyTitle:
            'Ufa... você consegue trocar o pneu e seguir viagem sem problemas...',
        choice1: 'Restart',
        choice1Id: 0,
        choice2: 'end',
        choice2Id: null),
    Story(
        id: 4,
        storyTitle:
            'Ao perder o controle, o carro fica desgovernado e capota, enquanto isso você se pergunta porque não é legal esfaquear alguém que está dirigindo um carro.',
        choice1: 'Restart',
        choice1Id: 0,
        choice2: 'end',
        choice2Id: null),
    Story(
        id: 5,
        storyTitle:
            'Você fica amigo do assassino e cantam a música do Rei Leão juntos. Ele pergunta se você conhece um lugar para despejar um corpo e você diz: "Tente no pier!"',
        choice1: 'Restart',
        choice1Id: 0,
        choice2: 'end',
        choice2Id: null)
  ];

  List<Story> _storyDataEnglish = [
    Story(
        id: 0,
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice1Id: 2,
        choice2: 'Better ask him if he\'s a murderer first.',
        choice2Id: 1),
    Story(
        id: 1,
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice1Id: 2,
        choice2: 'Wait, I know how to change a tire.',
        choice2Id: 3),
    Story(
        id: 2,
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice1Id: 5,
        choice2: 'It\'s him or me! You take the knife and stab him.',
        choice2Id: 4),
    Story(
        id: 3,
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice1Id: 0,
        choice2: 'end',
        choice2Id: null),
    Story(
        id: 4,
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice1Id: 0,
        choice2: 'end',
        choice2Id: null),
    Story(
        id: 5,
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice1Id: 0,
        choice2: 'end',
        choice2Id: null)
  ];

  String getStory() {
    return _storyData.where((element) => element.id == 0).first.storyTitle;
  }

  Story getWStory() {
    return _storyData.where((element) => element.id == _storyNumber).first;
  }

  String getChoice1() {
    return _storyData[0].choice1;
  }

  String getChoice2() {
    return _storyData[0].choice2;
  }

  void nextStory(int choiceNumber) {
    _storyNumber = choiceNumber;
  }
}

//TODO: Step 23 - Use the storyNumber property inside getStory(), getChoice1() and getChoice2() so that it gets the updated story and choices rather than always just the first (0th) one.

//TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODO: Step 17 - Create a method called nextStory(), it should not have any outputs but it should have 1 input called choiceNumber which will be the choice number (int) made by the user.

//TODO: Step 20 - Download the story plan here: https://drive.google.com/uc?export=download&id=1KU6EghkO9Hf2hRM0756xFHgNaZyGCou3

//TODO: Step 21 - Using the story plan, update nextStory() to change the storyNumber depending on the choice made by the user. e.g. if choiceNumber was equal to 1 and the storyNumber is 0, the storyNumber should become 2.

//TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
