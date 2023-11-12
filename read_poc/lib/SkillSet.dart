class SkillSet{
  String techType;
  String techName;
  int noOfPoc;
  SkillSet(this.techType,this.techName,this.noOfPoc);
  SkillSet.named({required this.techType,required this.techName,required this.noOfPoc});
  @override
  String toString() {
    // TODO: implement toString
    return '$noOfPoc worked in $techName of $techType';
  }
}