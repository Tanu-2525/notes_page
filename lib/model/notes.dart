import 'package:flutter/material.dart';
import 'package:spcl_notes_pg/variables/id.dart';

class notes_pg extends StatefulWidget {
  const notes_pg({Key? key}) : super(key: key);

  @override
  State<notes_pg> createState() => _notes_pgState();
}

class _notes_pgState extends State<notes_pg> {
  final data=[
  ["00:00","DD MM YYYY","Dr Abdul Kalam","Doctors diagnose disease, provide treatment, counsel patients with injuries, diseases or illnesses. The specific duties depend upon the speciality you pursue in your MBBS. Some doctors work in cardiology, whereas others may work in surgery, neurology, pulmonology or rheumatology."],
  ["00:00","DD MM YYYY","Dr Abdul Kalam","Doctors diagnose disease, provide treatment, counsel patients with injuries, diseases or illnesses. The specific duties depend upon the speciality you pursue in your MBBS. Some doctors work in cardiology, whereas others may work in surgery, neurology, pulmonology or rheumatology.",],
    ["00:00","DD MM YYYY","Dr Abdul Kalam","Doctors diagnose disease, provide treatment, counsel patients with injuries, diseases or illnesses. The specific duties depend upon the speciality you pursue in your MBBS. Some doctors work in cardiology, whereas others may work in surgery, neurology, pulmonology or rheumatology."],
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Theme.of(context).backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 45,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('lib/images/img1.png'),
                    ),
                  ),

                ],
              ),
              Container(
                  padding:const EdgeInsets.only(left:20),
                  child: PatientId(PatientName: "PATIENT NAME",
                    MedocId: "XXXX1234",
                    HealthId: "XXX XXX XXX",)
              ),
            ],
          ),
      Padding(
        padding: const EdgeInsets.fromLTRB(8,50,8,20),
        child: SizedBox(
          height: 400,

          child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black26),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                data[index][0],
                              ),
                              Text(
                                "-",
                              ),
                              Text(
                                data[index][1],
                              ),
                            ],
                          ),

                          Text(
                            data[index][2],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10),
                        child: Text(
                            data[index][3]
                        ),
                      ),
                    ],
                  ),
                ),
              );
              }
              ),
        ),
      )

        ],
      ),
    );
  }
}
