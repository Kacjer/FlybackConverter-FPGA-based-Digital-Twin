function RTW_SidParentMap() {
    this.sidParentMap = new Array();
    this.sidParentMap["flyback_pid:40"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:77"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:186"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:78"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:188"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:194"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:195"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:199"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:83"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:192"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:191"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:138"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:139"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:142"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:91"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:185"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:196"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:200"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:82"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:84"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:189"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:193"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:116"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:80"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:134"] = "flyback_pid:39";
    this.sidParentMap["flyback_pid:141"] = "flyback_pid:39";
    this.getParentSid = function(sid) { return this.sidParentMap[sid];}
}
    RTW_SidParentMap.instance = new RTW_SidParentMap();
