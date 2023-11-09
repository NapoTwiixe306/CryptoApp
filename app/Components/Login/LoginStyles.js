import { StyleSheet } from "react-native";

const styles = StyleSheet.create({
  parent: {
    paddingTop: 80,
    flex: 1,
    alignItems: "center",
  },
  container: {
    margin: 15,
    justifyContent: "center",
    alignItems: "center",
    padding: 15,
    backgroundColor: "#26293B",
    height: 600,
    width: 380,
    borderRadius: 15,
  },
  input: {
    position: "relative",
    top: -100,
    height: 50,
    borderRadius: 10,
    width: "100%",
    padding: 10,
    margin: 12,
    borderWidth: 1,
    borderColor: "white",
    fontSize: 20,
    color: "white",
  },
  title: {
    color: "white",
    fontWeight: "bold",
    fontSize: 30,
    position: "absolute",
    top: 50,
  },
  text: {
    color: "white",
  },
});

export default styles;
