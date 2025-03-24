/* eslint-disable no-unused-vars */
import toml from "toml";
import fs from "fs";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient()

export function getAppUrl() {
  const fileContent = fs.readFileSync("shopify.app.haseeb-test.toml", "utf-8");
  const config = toml.parse(fileContent);
  return config.application_url;
}
export function getAppHanlde() {
  const fileContent = fs.readFileSync("shopify.app.haseeb-test.toml", "utf-8");
  const config = toml.parse(fileContent);
  return config.handle;
}

export async function getShopSession(shop) {
  const session = await prisma.session.findUnique({
    where: {
      id: shop.id
    }
  })
  return session;
}
