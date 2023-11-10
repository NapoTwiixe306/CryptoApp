import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
  container: {
    flex: 1,
    flexDirection: "row",
    justifyContent: "space-between",
    alignItems: "center",
    height: 80,
    backgroundColor: "#CAD5E2",
    position: "absolute",
    bottom: 0,
    left: 0,
    right: 0,
  },
  tab: {
    flex: 1,
    justifyContent: "center",
  },
  tabContent: {
    justifyContent: "center",
    alignItems: "center",
  },
  tabText: {
    marginLeft: 30,
    color: "black",
    textAlign: "center",
  },
  icon: {
    marginLeft: 30,
    color: "black",
    fontSize: 24,
    justifyContent: "center", // Centrer l'icône verticalement dans son conteneur
  },
});
export default styles;
