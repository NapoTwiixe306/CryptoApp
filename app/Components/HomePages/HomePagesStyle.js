import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
  parent: {
    paddingTop: 15,
    flex: 1,
    alignItems: "center",
  },
  container: {
    margin: 15,
    justifyContent: "center",
    alignItems: "center",
    padding: 15,
    backgroundColor: "red",
    height: 200,
    width: 380,
    borderRadius: 15,
    shadowColor: "white",
  },
  title: {
    color: "white",
    fontSize: 25,
    fontWeight: "bold",
  },
});
export default styles;
